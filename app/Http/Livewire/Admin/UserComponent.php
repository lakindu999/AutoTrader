<?php

namespace App\Http\Livewire\Admin;

use App\Models\Users;
use Livewire\Component;

class UserComponent extends Component
{

    public function deleteUser($slide_id)
    {
        $slider=Users::find($slide_id);
        $slider->delete();
        session()->flash('message','User has been deleted successfully!');
    }


    public function render()
    {
        $users=Users::all();
        return view('livewire.admin.user-component',['users'=>$users])->layout('layouts.base');
    }
}
