<?php

namespace Botble\Sample\Forms\Settings;

use Botble\Sample\Http\Requests\Settings\SampleRequest;
use Botble\Setting\Forms\SettingForm;

class SampleForm extends SettingForm
{
    public function buildForm(): void
    {
        parent::buildForm();

        $this
            ->setSectionTitle('Setting title')
            ->setSectionDescription('Setting description')
            ->setValidatorClass(SampleRequest::class);
    }
}
