<?php

use Botble\Base\Facades\AdminHelper;
use Botble\Sample\Http\Controllers\SampleController;
use Illuminate\Support\Facades\Route;

AdminHelper::registerRoutes(function () {
    Route::group(['prefix' => 'samples', 'as' => 'sample.'], function () {
        Route::resource('', SampleController::class)->parameters(['' => 'sample']);
    });
});
