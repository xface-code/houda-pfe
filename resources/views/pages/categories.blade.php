@extends('layouts.app')

@section('content')

<section id="content">
    <div class="container clearfix">
        <h3>Produits de la categorie : {{$categorie->nom}}</h3>
        <div id="portfolio" class="portfolio grid-container portfolio-3 clearfix">
            @foreach ($categorie->products as $item)
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