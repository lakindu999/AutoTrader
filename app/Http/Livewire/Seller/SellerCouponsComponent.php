<?php

namespace App\Http\Livewire\Seller;

use App\Models\Coupon;
use Livewire\Component;

class SellerCouponsComponent extends Component
{


    public function deleteCoupon($coupon_id)
    {
        $coupon = Coupon::find($coupon_id);
        $coupon->delete();
        session()->flash('message','Coupon has been deleted successfully!');
    }


    public function render()
    {
        $coupons=Coupon::all();
        return view('livewire.seller.seller-coupons-component',['coupons'=>$coupons])->layout('layouts.base');
    }
}
