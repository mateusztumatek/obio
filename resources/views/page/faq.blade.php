@php
    $faq = \App\Services\AppService::getFaq();
@endphp
<div class="row">
    <div class="col-md-12">
        <h2 class="display-1">FAQ</h2>
    </div>
    @foreach($faq as $category => $items)
        <div class="col-md-12">
            <h2 class="headline">{{$category}}</h2>
            <v-divider class="my-3"></v-divider>
            <v-expansion-panels>
                @foreach($items as $key => $item)
                <v-expansion-panel
                        key="{{$key}}"
                >
                    <v-expansion-panel-header>{{$item->question}}</v-expansion-panel-header>
                    <v-expansion-panel-content>
                        <div>{!! $item->answer !!}</div>
                    </v-expansion-panel-content>
                </v-expansion-panel>
                    @endforeach
            </v-expansion-panels>
        </div>
    @endforeach
</div>
@section('js')
    <script>
        Vue.prototype.faq = new Vue({
            data:() => {
                return{
                    active: null
                }
            }
        })
    </script>
    @endsection
