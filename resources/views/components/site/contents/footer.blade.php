<footer class="footer">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-4">
                    <h1>DP<span>4</span>PM</h1>
                    
                    <div class="footer-contact">
                        <ul>
                            <li> <i class="icon-map"></i>
                                {{-- <p>{{ __('site.footer.address') }}</p> --}}
                                <p>{{@$contact->address}}</p>
                            </li>
                            <li> <i class="icon-phone"></i> <a title="{{@$contact->contact}}" href="{{@$contact->contact}}">
                                    {{-- {{ __('site.footer.office_time') }} --}}
                                    {{@$contact->time}}
                                </a></li>
                            <li> <i class="icon-email"></i> <a href="mailto:{{@$contact->email}}">{{@$contact->email}}</a></li>
                        </ul>
                    </div>

                </div>
                <div class="col-7">
                    <div class="footer-nav">
                        <p>
                            <a href="#">About Us</a>
                            <a href="#">Contact Us</a>
                            <a href="#">FAQ</a>
                            <a href="#">Feedback</a>
                        </p>
                        <div class="footer-social">
                            <ul>
                                <li class="facebook">
                                    <a href="#"
                                        class="icon-facebook"></a>
                                </li>
                                <li class="youtube">
                                    <a href="#" class="icon-youtube"></a>
                                </li>
                                <li class="twitter">
                                    <a href="#"
                                        class="icon-twitter"></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="footer-assistance">
                        <div class="row justify-content-between">
                            <div class="col-6">
                                <h3>{{ __('site.footer.title2') }}</h3>
                                <img src="{{ (@$contact->thumb) ? asset('storage/'.@$contact->thumb) : ''}}" alt="">
                            </div>
                            <div class="col-5">
                                <h3>{{ __('site.footer.title3') }}</h3>
                                <img src="{{ asset('site/assets/images/uysys-logo.svg') }}" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="footer-btm">
                        <p>Copyright © {{date('Y')}} {{ __('site.common.site') }}. All rights reserved.</p>
                        
                    </div>
                </div>
            </div>
        </div>
        </div>

    </footer>