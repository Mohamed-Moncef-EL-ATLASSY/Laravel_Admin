<?php

namespace App\Admin\Controllers;

use App\Models\Client;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ClientController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Client';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Client());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Nom'))->setAttributes(['style' => 'color:green;']);
        $grid->column('address', __('Adresse'))->sortable()->filter("like")->copyable()->style('max-width:200px;word-break:break-all;');

        $grid->column('created_at', __('Créé le'))->display(function($value){
            return date("d/m/Y", strtotime($value));
        });

        $grid->column('updated_at', __('Modifié le'))->display(function ($value) {
            return date("d/m/Y", strtotime($value));
        });
        $grid->column('photo', __('Photo'))->image();


        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Client::findOrFail($id));


        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('address', __('Address'));
        $show->field('photo', __('Photo'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Client());

        $form->column(2 / 3, function ($form) {
        $form->text('name', __('Nom'))->required();
        $form->textarea('address', __('Adresse'));
        });

        $form->column(1 / 3, function ($form) {
        $form->image('photo', __('Photo'));
        });

        return $form;
    }
}
