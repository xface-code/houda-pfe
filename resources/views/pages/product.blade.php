@extends('layouts.app')

@section('content')
<section id="page-title">

    <div class="container clearfix">
        <h1>{{$product->nom}}</h1>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="{{url($product->category->slug)}}">{{$product->category->nom}}</a></li>
            <li class="breadcrumb-item active" aria-current="page">
                {{$product->nom}}
            </li>
        </ol>
    </div>

</section>

<section id="content">

    <div class="content-wrap">

        <div class="container clearfix">

            <div class="single-product">

                <div class="product">

                    <div class="col_two_fifth">

                        <!-- Product Single - Gallery
                        ============================================= -->
                        <div class="product-image">
                            <div class="fslider" data-pagi="false" data-arrows="false" data-thumbs="true">
                                <div class="flexslider">
                                    <div class="slider-wrap" data-lightbox="gallery">
                                        @foreach (json_decode($product->imgs) as $item)
                                            <div class="slide" data-thumb="{{asset('storage/'.$item)}}"><a href="{{asset('storage/'.$item)}}" title="Images" data-lightbox="gallery-item"><img src="{{asset('storage/'.$item)}}" alt="image"></a></div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                            <div class="sale-flash">Sale!</div>
                        </div><!-- Product Single - Gallery End -->

                    </div>

                    <div class="col_two_fifth product-desc">

                        <!-- Product Single - Price
                        ============================================= -->
                        <div class="product-price"><ins>{{$product->price}}</ins> DH</div><!-- Product Single - Price End -->

                       
                        <div class="line"></div>

                        <!-- Product Single - Quantity & Cart Button
                        ============================================= -->
                            <div class="quantity clearfix">
                                <input type="button" value="-" class="minus">
                                <input id="qty" type="text" step="1" min="1"  name="quantity" value="1" title="Qty" class="qty" size="4" />
                                <input type="button" value="+" class="plus">
                            </div>
                            <button  type="submit" class="add-to-cart button nomargin bag-click">Ajouter au  cart</button>
                   

                        <div class="clear"></div>
                        <div class="line"></div>

                        <!-- Product Single - Short Description
                        ============================================= -->
                        <p>
                            {{$product->description}}
                        </p>

                       
                    </div>

            


                </div>

            </div>

            <div class="clear"></div><div class="line"></div>
        </div>
    </div>
</section>

@endsection

@section('js')
    <script>
        $(".bag-click").click(function(){
            $(this).each(function(){
                // alert($('#qty').val());
                window.location.href = "{{url($product->slug.'/add-to-cart')}}?qty="+$('#qty').val();
            });
        });
    </script>
@endsection