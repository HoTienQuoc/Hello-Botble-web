<?php

return [
    [
        'name' => 'Samples',
        'flag' => 'sample.index',
    ],
    [
        'name' => 'Create',
        'flag' => 'sample.create',
        'parent_flag' => 'sample.index',
    ],
    [
        'name' => 'Edit',
        'flag' => 'sample.edit',
        'parent_flag' => 'sample.index',
    ],
    [
        'name' => 'Delete',
        'flag' => 'sample.destroy',
        'parent_flag' => 'sample.index',
    ],
];
