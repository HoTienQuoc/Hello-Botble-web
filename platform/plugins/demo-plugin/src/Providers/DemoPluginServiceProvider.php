<?php

namespace Botble\DemoPlugin\Providers;

use Botble\Base\Supports\ServiceProvider;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Base\Facades\DashboardMenu;
use Botble\DemoPlugin\Models\DemoPlugin;

class DemoPluginServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function boot(): void
    {
        $this
            ->setNamespace('plugins/demo-plugin')
            ->loadHelpers()
            ->loadAndPublishConfigurations(['permissions'])
            ->loadAndPublishTranslations()
            ->loadRoutes()
            ->loadAndPublishViews()
            ->loadMigrations();
            
            if (defined('LANGUAGE_ADVANCED_MODULE_SCREEN_NAME')) {
                \Botble\LanguageAdvanced\Supports\LanguageAdvancedManager::registerModule(DemoPlugin::class, [
                    'name',
                ]);
            }
            
            DashboardMenu::default()->beforeRetrieving(function () {
                DashboardMenu::registerItem([
                    'id' => 'cms-plugins-demo plugin',
                    'priority' => 5,
                    'parent_id' => null,
                    'name' => 'plugins/demo plugin::demo plugin.name',
                    'icon' => 'ti ti-box',
                    'url' => route('demo plugin.index'),
                    'permissions' => ['demo plugin.index'],
                ]);
            });
    }
}
