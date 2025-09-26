<?php

return [
    [
        'name' => 'Demo plugins',
        'flag' => 'demo-plugin.index',
    ],
    [
        'name' => 'Create',
        'flag' => 'demo-plugin.create',
        'parent_flag' => 'demo-plugin.index',
    ],
    [
        'name' => 'Edit',
        'flag' => 'demo-plugin.edit',
        'parent_flag' => 'demo-plugin.index',
    ],
    [
        'name' => 'Delete',
        'flag' => 'demo-plugin.destroy',
        'parent_flag' => 'demo-plugin.index',
    ],
];
