<?php return array (
  'arrilot/laravel-widgets' => 
  array (
    'providers' => 
    array (
      0 => 'Arrilot\\Widgets\\ServiceProvider',
    ),
    'aliases' => 
    array (
      'Widget' => 'Arrilot\\Widgets\\Facade',
      'AsyncWidget' => 'Arrilot\\Widgets\\AsyncFacade',
    ),
  ),
  'facade/ignition' => 
  array (
    'providers' => 
    array (
      0 => 'Facade\\Ignition\\IgnitionServiceProvider',
    ),
    'aliases' => 
    array (
      'Flare' => 'Facade\\Ignition\\Facades\\Flare',
    ),
  ),
  'fideloper/proxy' => 
  array (
    'providers' => 
    array (
      0 => 'Fideloper\\Proxy\\TrustedProxyServiceProvider',
    ),
  ),
  'intervention/image' => 
  array (
    'providers' => 
    array (
      0 => 'Intervention\\Image\\ImageServiceProvider',
    ),
    'aliases' => 
    array (
      'Image' => 'Intervention\\Image\\Facades\\Image',
    ),
  ),
  'jenssegers/agent' => 
  array (
    'providers' => 
    array (
      0 => 'Jenssegers\\Agent\\AgentServiceProvider',
    ),
    'aliases' => 
    array (
      'Agent' => 'Jenssegers\\Agent\\Facades\\Agent',
    ),
  ),
  'larapack/doctrine-support' => 
  array (
    'providers' => 
    array (
      0 => 'Larapack\\DoctrineSupport\\DoctrineSupportServiceProvider',
    ),
  ),
  'larapack/voyager-hooks' => 
  array (
    'providers' => 
    array (
      0 => 'Larapack\\VoyagerHooks\\VoyagerHooksServiceProvider',
    ),
  ),
  'laravel/tinker' => 
  array (
    'providers' => 
    array (
      0 => 'Laravel\\Tinker\\TinkerServiceProvider',
    ),
  ),
  'nesbot/carbon' => 
  array (
    'providers' => 
    array (
      0 => 'Carbon\\Laravel\\ServiceProvider',
    ),
  ),
  'nunomaduro/collision' => 
  array (
    'providers' => 
    array (
      0 => 'NunoMaduro\\Collision\\Adapters\\Laravel\\CollisionServiceProvider',
    ),
  ),
  'pragmarx/tracker' => 
  array (
    'providers' => 
    array (
      0 => 'PragmaRX\\Tracker\\Vendor\\Laravel\\ServiceProvider',
    ),
    'aliases' => 
    array (
      'Tracker' => 'PragmaRX\\Tracker\\Vendor\\Laravel\\Facade',
    ),
  ),
  'spatie/laravel-backup' => 
  array (
    'providers' => 
    array (
      0 => 'Spatie\\Backup\\BackupServiceProvider',
    ),
  ),
  'tanmuhittin/laravel-google-translate' => 
  array (
    'providers' => 
    array (
      0 => 'Tanmuhittin\\LaravelGoogleTranslate\\LaravelGoogleTranslateServiceProvider',
    ),
  ),
  'tcg/voyager' => 
  array (
    'providers' => 
    array (
      0 => 'TCG\\Voyager\\VoyagerServiceProvider',
      1 => 'TCG\\Voyager\\Providers\\VoyagerDummyServiceProvider',
    ),
  ),
);