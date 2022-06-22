<?php

namespace App\View\Components\Site\Contents;

use Illuminate\View\Component;
use App\Models\SitePartner;

class Partner extends Component
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
        $partners = SitePartner::get();
        return view('components.site.contents.partner', compact('partners'));
    }

    
}
