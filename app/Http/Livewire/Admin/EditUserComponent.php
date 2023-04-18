<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;

class EditUserComponent extends Component
{
    public function render()
    {
        return view('livewire.admin.edit-user-component')->layout('layouts.base');
    }
}
