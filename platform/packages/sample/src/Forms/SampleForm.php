<?php

namespace Botble\Sample\Forms;

use Botble\Base\Forms\FieldOptions\NameFieldOption;
use Botble\Base\Forms\FieldOptions\StatusFieldOption;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Forms\FormAbstract;
use Botble\Sample\Http\Requests\SampleRequest;
use Botble\Sample\Models\Sample;

class SampleForm extends FormAbstract
{
    public function setup(): void
    {
        $this
            ->model(Sample::class)
            ->setValidatorClass(SampleRequest::class)
            ->add('name', TextField::class, NameFieldOption::make()->required())
            ->add('status', SelectField::class, StatusFieldOption::make())
            ->setBreakFieldPoint('status');
    }
}
