<?php
use Theme;
use App\Http\Controllers\Controller;

class HomeController extends Controller {

    public function getIndex()
    {
        $theme = Theme::uses('grab')->layout('default'); // layout default.blade.php

        $viewData = [
            'name' => 'Botble CMS',
        ];

        return $theme->scope('index', $viewData)->render();
        // Sẽ tìm file platform/themes/grab/views/index.blade.php
    }

}

