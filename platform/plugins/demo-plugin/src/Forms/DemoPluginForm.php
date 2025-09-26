<?php

namespace Botble\DemoPlugin\Forms;

use Botble\Base\Forms\FieldOptions\NameFieldOption;
use Botble\Base\Forms\FieldOptions\StatusFieldOption;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Forms\FormAbstract;
use Botble\DemoPlugin\Http\Requests\DemoPluginRequest;
use Botble\DemoPlugin\Models\DemoPlugin;

class DemoPluginForm extends FormAbstract
{
    public function setup(): void
    {
        $this
            ->model(DemoPlugin::class)
            ->setValidatorClass(DemoPluginRequest::class)
            ->add('name', TextField::class, NameFieldOption::make()->required())
            ->add('status', SelectField::class, StatusFieldOption::make())
            ->setBreakFieldPoint('status');
    }
}
