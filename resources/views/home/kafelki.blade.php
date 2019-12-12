@if(isset($kafelki) && count($kafelki) >= 3)
    <div class="container">
        <div class="row my-12 kafelki">
            <div class="col-md-6 kafelki-left">
                <div class="kafelka">
                    <img src="{{url('/storage/'.$kafelki[0]->image)}}">
                    <div class="content">
                        <h3>{{$kafelki[0]->name}}</h3>
                        <p>{{$kafelki[0]->value}}</p>
                        <v-btn tile class="my-button my-border" href="{{$kafelki[0]->url}}">{{__('my.Zobacz więcej')}}</v-btn>
                    </div>
                </div>
            </div>
            <div class="col-md-6 kafelki-right">
                <div class="kafelka first"><img src="{{url('/storage/'.$kafelki[1]->image)}}">
                    <div class="content">
                        <h3>{{$kafelki[1]->name}}</h3>
                        <p>{{$kafelki[1]->value}}</p>
                        <v-btn tile class="my-button my-border" href="{{$kafelki[1]->url}}">{{__('my.Zobacz więcej')}}</v-btn>
                    </div>
                </div>
                <div class="kafelka second"><img src="{{url('/storage/'.$kafelki[2]->image)}}">
                    <div class="content">
                        <h3>{{$kafelki[2]->name}}</h3>
                        <p>{{$kafelki[2]->value}}</p>
                        <v-btn tile class="my-button my-border" href="{{$kafelki[2]->url}}">{{__('my.Zobacz więcej')}}</v-btn>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endif
