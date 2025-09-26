<?php

use Botble\Base\Facades\AdminHelper;
use Botble\DemoPlugin\Http\Controllers\DemoPluginController;
use Illuminate\Support\Facades\Route;

AdminHelper::registerRoutes(function () {
    Route::group(['prefix' => 'demo-plugins', 'as' => 'demo-plugin.'], function () {
        Route::resource('', DemoPluginController::class)->parameters(['' => 'demo-plugin']);
    });
});
