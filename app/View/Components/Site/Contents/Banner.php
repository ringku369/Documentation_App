<?php

namespace App\View\Components\Site\Contents;

use Illuminate\View\Component;
use App\Models\SiteBanner;

class Banner extends Component
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
        $banners = SiteBanner::get();
        return view('components.site.contents.banner', compact('banners'));
    }
}
