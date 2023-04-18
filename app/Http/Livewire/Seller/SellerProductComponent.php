<?php

namespace App\Http\Livewire\Seller;

use App\Models\Product;
use Livewire\Component;
use Livewire\WithPagination;

class SellerProductComponent extends Component
{
    use WithPagination;

    public $searchTerm;


    public function deleteProduct($id)
    {
        $product = Product::find($id);
        if ($product->image) {
            unlink('assets/images/products' . '/' . $product->image);
        }
        if ($product->images) {
            $images = explode(",", $product->images);
            foreach ($images as $image) {
                if ($image) {
                    unlink('assets/images/products' . '/' . $image);
                }
            }
        }
        $product->delete();
        session()->flash('message', 'Product has been deleted successfully!');
    }

    public function render()
    {
        $search = '%' . $this->searchTerm . '%';
        $products = Product::where('name', 'LIKE', $search)
        ->orWhere('stock_status','LIKE', $search)
        ->orWhere('regular_price','LIKE', $search)
        ->orWhere('sale_price','LIKE', $search)
        ->orWhere('id','DESC')->paginate(10);
        return view('livewire.seller.seller-product-component', ['products' => $products])->layout('layouts.base');
    }
}
