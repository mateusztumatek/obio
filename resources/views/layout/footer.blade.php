<footer>
    <div class="give-me-space">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <v-img src="{{url('/storage/'.setting('site.logo_white'))}}" width="250px" class="mb-3"></v-img>
                    {!! setting('site.footer') !!}
                </div>
                <div class="col-md-5 d-flex">
                    {{menu('footer', 'my_footer')}}
                </div>
                <div class="col-md-3">
                    <newsletter></newsletter>
                </div>
                <div class="col-12"><v-divider color="white"></v-divider></div>
                <div class="row justify-space-between mx-0">
                    <div class="col-md-4">
                        <p class="white--text mb-0" style="font-size: 0.8rem"><v-icon style="font-size: 0.8rem" class="mr-3" color="white">mdi-copyright</v-icon>OBIO Dom produkcyjny SP. J. 2020. All right reserved.</p>
                    </div>
                    <div class="col-md-4 text-lg-right">
                        <div class="ml-auto">
                            <a href="{{url('/polityka-prywatnosci')}}" class="white--text default-link">Polityka prywatności</a> <span class="white--text">|</span>
                            <a href="{{url('/regulamin')}}" class="white--text default-link">Regulamin</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
