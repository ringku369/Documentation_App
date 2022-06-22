<?php

namespace App\View\Components\Site\Contents;

use Illuminate\View\Component;
use App\Models\SiteContact;

class Footer extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        $contact = SiteContact::first();
        return view('components.site.contents.footer', compact('contact') );
    }
}
