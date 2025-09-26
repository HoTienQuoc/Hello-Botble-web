<?php

namespace Botble\DemoPlugin\Http\Controllers;

use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\DemoPlugin\Http\Requests\DemoPluginRequest;
use Botble\DemoPlugin\Models\DemoPlugin;
use Botble\Base\Http\Controllers\BaseController;
use Botble\DemoPlugin\Tables\DemoPluginTable;
use Botble\DemoPlugin\Forms\DemoPluginForm;

class DemoPluginController extends BaseController
{
    public function __construct()
    {
        $this
            ->breadcrumb()
            ->add(trans(trans('plugins/demo plugin::demo-plugin.name')), route('demo-plugin.index'));
    }

    public function index(DemoPluginTable $table)
    {
        $this->pageTitle(trans('plugins/demo plugin::demo-plugin.name'));

        return $table->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('plugins/demo plugin::demo-plugin.create'));

        return DemoPluginForm::create()->renderForm();
    }

    public function store(DemoPluginRequest $request)
    {
        $form = DemoPluginForm::create()->setRequest($request);

        $form->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('demo-plugin.index'))
            ->setNextUrl(route('demo-plugin.edit', $form->getModel()->getKey()))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(DemoPlugin $demoPlugin)
    {
        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $demoPlugin->name]));

        return DemoPluginForm::createFromModel($demoPlugin)->renderForm();
    }

    public function update(DemoPlugin $demoPlugin, DemoPluginRequest $request)
    {
        DemoPluginForm::createFromModel($demoPlugin)
            ->setRequest($request)
            ->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('demo-plugin.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(DemoPlugin $demoPlugin)
    {
        return DeleteResourceAction::make($demoPlugin);
    }
}
