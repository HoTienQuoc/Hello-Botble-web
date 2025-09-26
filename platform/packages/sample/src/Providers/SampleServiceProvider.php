<?php

namespace Botble\Sample\Providers;

use Botble\Base\Facades\DashboardMenu;
use Botble\Base\Supports\ServiceProvider;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Sample\Models\Sample;
use Botble\LanguageAdvanced\Supports\LanguageAdvancedManager;

class SampleServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function boot(): void
    {
        $this
            ->setNamespace('packages/sample')
            ->loadHelpers()
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadAndPublishViews()
            ->loadRoutes();

        if (defined('LANGUAGE_ADVANCED_MODULE_SCREEN_NAME')) {
            LanguageAdvancedManager::registerModule(Sample::class, [
                'name',
            ]);
        }

        DashboardMenu::default()->beforeRetrieving(function () {
            DashboardMenu::registerItem([
                'id' => 'cms-packages-sample',
                'priority' => 5,
                'parent_id' => null,
                'name' => 'packages/sample::sample.name',
                'icon' => 'ti ti-box',
                'url' => route('sample.index'),
                'permissions' => ['sample.index'],
            ]);
        });
    }
}
