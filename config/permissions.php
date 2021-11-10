<?php


return[
    'access' =>[
        'list-category'  =>  'Category_List',
        // 'add-category'  =>  'Category_Add',
        'delete-category'  =>  'Category_Delete',
        'list-menu' => 'Menu_List',
        'add-menu'  =>  'Menu_Add',
        'delete-menu'  =>  'Menu_Delete',
    ],
    'table_module'=>[
        'Category',
        'Slider',
        'Menu',
        'Product',
        'Setting',
        'User',
        'Role',
        'Test',
        'Demo'
        
    ],
    'module_children' =>[
        'List',
        'Add',
        'Edit',
        'Delete'
    ]

];