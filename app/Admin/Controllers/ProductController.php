<?php

namespace App\Admin\Controllers;

use App\Models\Client;
use App\Models\Product;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ProductController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Product';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Product());

        $grid->column('id', __('ID Produit'));
        $grid->column('productName', __('Nom Produit'));
        $grid->column('client_id', __('ID Client'))
        ->sortable();

        $grid->column('client.name', __('Nom Client'))
        // ->sortable()
        ;

        $grid->column('productDescription', __('Description Produit'));
        $grid->column('productPrice', __('Prix Produit'))
        ->filter("range");

        $grid->column('created_at', __('Crée le'))
        ->hide();

        $grid->column('updated_at', __('Modifié le'))
        ->hide();

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
        $show = new Show(Product::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('productName', __('ProductName'));
        $show->field('client_id', __('Client id'));
        $show->field('productDescription', __('ProductDescription'));
        $show->field('productPrice', __('ProductPrice'));
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
        $form = new Form(new Product());

        $form->select('client_id', __('Nom Client'))

        ->options(Client::all()->pluck('name','id'))
        ->required();

        $form->divider();

        $form->text('productName', __('Nom Produit'))
        ->required();

        $form->textarea('productDescription', __('Description Produit'))
        ->rows(3);

        $form->currency('productPrice', __('Prix Produit'))
        ->required()
        ->symbol("DH");

        return $form;
    }
}
