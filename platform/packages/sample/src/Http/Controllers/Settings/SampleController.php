<?php

namespace Botble\Sample\Http\Controllers\Settings;

use Botble\Base\Forms\FormBuilder;
use Botble\Sample\Forms\Settings\SampleForm;
use Botble\Sample\Http\Requests\Settings\SampleRequest;
use Botble\Setting\Http\Controllers\SettingController;

class SampleController extends SettingController
{
    public function edit(FormBuilder $formBuilder)
    {
        $this->pageTitle('Page title');

        return $formBuilder->create(SampleForm::class)->renderForm();
    }

    public function update(SampleRequest $request)
    {
        return $this->performUpdate($request->validated());
    }
}
