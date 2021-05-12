@extends('layouts.app')

@section('content')
    <?php
        $products = new App\Product();    
        $sliders = new App\Slider();  
         
    ?>
    <section id="slider" class="slider-element">
        <div class=" clearfix">
            <div id="oc-slider" class="owl-carousel carousel-widget" data-margin="0" data-items="1" data-animate-in="zoomIn" data-speed="450" data-animate-out="fadeOut">
                @foreach ($sliders->getItems() as $item)
                    <a href="#"><img src="{{asset('storage/'.$item->img)}}" alt="Slider"></a>
                @endforeach
            </div>
        </div>
    </section>
    <section id="content">
            <div class="container clearfix">
                <h3>Nouveau Produits :</h3>
                <div id="portfolio" class="portfolio grid-container portfolio-3 clearfix">
                    @foreach ($products->getItems()->sortByDesc('id')->take(6) as $item)
                    <article class="portfolio-item pf-media pf-icons">
                        <div class="portfolio-image">
                            <a href="{{url(''.$item->category->slug.'/'.$item->slug)}}">
                                @if (json_decode($item->imgs))
                                    <img src="{{asset('storage/'.json_decode($item->imgs)[0])}}" alt="Open Imagination"> 
                                @endif
                            </a>
                            <div class="portfolio-overlay">
                                @if (json_decode($item->imgs))
                                    <a href="{{asset('storage/'.json_decode($item->imgs)[0])}}" class="left-icon" data-lightbox="image"><i class="icon-line-plus"></i></a>  
                                @endif
                            </div>
                        </div>
                        <div class="portfolio-desc">
                            <h3><a href="{{url(''.$item->category->slug.'/'.$item->slug)}}">{{$item->nom}}</a></h3>
                        </div>
                    </article>
                    @endforeach
                </div><!-- #portfolio end -->
            </div>
    </section>
@endsection
@section('js')

@endsection
