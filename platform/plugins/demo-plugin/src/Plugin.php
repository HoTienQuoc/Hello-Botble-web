<?php

namespace Botble\DemoPlugin;

use Illuminate\Support\Facades\Schema;
use Botble\PluginManagement\Abstracts\PluginOperationAbstract;

class Plugin extends PluginOperationAbstract
{
    public static function remove(): void
    {
        Schema::dropIfExists('Demo Plugins');
        Schema::dropIfExists('Demo Plugins_translations');
    }
}
