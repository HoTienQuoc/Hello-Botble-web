<?php

namespace Botble\DemoPlugin\Tables;

use Botble\DemoPlugin\Models\DemoPlugin;
use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\Actions\EditAction;
use Botble\Table\BulkActions\DeleteBulkAction;
use Botble\Table\BulkChanges\CreatedAtBulkChange;
use Botble\Table\BulkChanges\NameBulkChange;
use Botble\Table\BulkChanges\StatusBulkChange;
use Botble\Table\Columns\CreatedAtColumn;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\NameColumn;
use Botble\Table\Columns\StatusColumn;
use Botble\Table\HeaderActions\CreateHeaderAction;
use Illuminate\Database\Eloquent\Builder;

class DemoPluginTable extends TableAbstract
{
    public function setup(): void
    {
        $this
            ->model(DemoPlugin::class)
            ->addHeaderAction(CreateHeaderAction::make()->route('demo-plugin.create'))
            ->addActions([
                EditAction::make()->route('demo-plugin.edit'),
                DeleteAction::make()->route('demo-plugin.destroy'),
            ])
            ->addColumns([
                IdColumn::make(),
                NameColumn::make()->route('demo-plugin.edit'),
                CreatedAtColumn::make(),
                StatusColumn::make(),
            ])
            ->addBulkActions([
                DeleteBulkAction::make()->permission('demo-plugin.destroy'),
            ])
            ->addBulkChanges([
                NameBulkChange::make(),
                StatusBulkChange::make(),
                CreatedAtBulkChange::make(),
            ])
            ->queryUsing(function (Builder $query) {
                $query->select([
                    'id',
                    'name',
                    'created_at',
                    'status',
                ]);
            });
    }
}
