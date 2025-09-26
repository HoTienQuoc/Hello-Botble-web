<?php

namespace Botble\Sample\Http\Controllers;

use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Sample\Http\Requests\SampleRequest;
use Botble\Sample\Models\Sample;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Sample\Tables\SampleTable;
use Botble\Sample\Forms\SampleForm;

class SampleController extends BaseController
{
    public function __construct()
    {
        $this
            ->breadcrumb()
            ->add(trans(trans('packages/sample::sample.name')), route('sample.index'));
    }

    public function index(SampleTable $table)
    {
        $this->pageTitle(trans('packages/sample::sample.name'));

        return $table->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('packages/sample::sample.create'));

        return SampleForm::create()->renderForm();
    }

    public function store(SampleRequest $request)
    {
        $form = SampleForm::create()->setRequest($request);

        $form->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('sample.index'))
            ->setNextUrl(route('sample.edit', $form->getModel()->getKey()))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(Sample $sample)
    {
        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $sample->name]));

        return SampleForm::createFromModel($sample)->renderForm();
    }

    public function update(Sample $sample, SampleRequest $request)
    {
        SampleForm::createFromModel($sample)
            ->setRequest($request)
            ->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('sample.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(Sample $sample)
    {
        return DeleteResourceAction::make($sample);
    }
}
