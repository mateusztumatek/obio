<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use TCG\Voyager\Models\Translation;

class Translate extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'my:translate';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $model_name = $this->ask('Jaki model chcesz przetłumaczyć?');
        if(!class_exists($model_name)){
            $this->error('Taki model nie istnieje');
        }
        $langs = config('app.locales');
        foreach($langs as $key => $l){
            if($l == 'pl') array_splice($langs, $key, 1);
        }
        $elem = new $model_name;
        $attributes = $elem->getTranslatableAttributes();
        $all_elements = $elem::all();
        foreach ($all_elements as $element){
            foreach ($attributes as $attribute){
                $text_to_translate = $element[$attribute];
                foreach ($langs as $lang){
                    $translated = $this->translate_via_api_key('pl', $lang, $text_to_translate);
                    if(!$to_update = Translation::where('table_name', $elem->getTable())->where('column_name', $attribute)->where('foreign_key', $element->id)->where('locale', $lang)->first()){
                        $translated_model = Translation::create([
                            'table_name' => $elem->getTable(),
                            'column_name' => $attribute,
                            'foreign_key' => $element->id,
                            'locale' => $lang,
                            'value' => $translated
                        ]);
                        $this->info($element[$attribute]. ' => '. $translated);
                    }else{
                        $to_update->update([
                            'table_name' => $elem->getTable(),
                            'column_name' => $attribute,
                            'foreign_key' => $element->id,
                            'locale' => $lang,
                            'value' => $translated
                        ]);
                        $this->info($element[$attribute]. ' => '. $translated);
                    }
                }
            }
        }
    }
    private function translate_via_api_key($base_locale, $locale, $text){
        $apiKey = config('laravel_google_translate.google_translate_api_key', false);
        $url = 'https://www.googleapis.com/language/translate/v2?key=' . $apiKey . '&q=' . rawurlencode($text) . '&source=' . substr($base_locale, 0, strpos($base_locale."_", "_")) . '&target=' . substr($locale, 0, strpos($locale."_", "_"));
        $handle = curl_init();
        curl_setopt($handle, CURLOPT_URL, $url);
        curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($handle);
        if ($response === false) {
            throw new \Exception(curl_error($handle), curl_errno($handle));
        }
        $responseDecoded = json_decode($response, true);
        curl_close($handle);

        if (isset($responseDecoded['error'])) {
            /*$this->error("Google Translate API returned error");
            if (isset($responseDecoded["error"]["message"])) {
                $this->error($responseDecoded["error"]["message"]);
            }*/
            var_dump($responseDecoded);
            exit;
        }

        return $responseDecoded['data']['translations'][0]['translatedText'];
    }
}
