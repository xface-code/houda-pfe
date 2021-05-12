@extends('layouts.app')

@section('content')
<section id="content">
    <div class="content-wrap">
        <div class="container clearfix">
                @if(session()->has('ok'))
                            <div class="row">
                                <div class="col-12">
                                    <div class="alert alert-success">{{session('ok')}}</div>
                                </div>
                            </div>
                @endif
            <div class="row">
                <div class="col-md-5 card p-4">
                        <div class="row pb-0">
                            <form action="#" method="post">
                                <div class="row pb-0">
                                    <div class="form-group col-md-6 {!! $errors->has('name') ? 'has-error' : '' !!}">
                                        <input type="text" class="form-control" id="">
                                    </div>

                                    <div class="form-group col-md-6 {!! $errors->has('email') ? 'has-error' : '' !!}">
                                        <input type="email" name="form-control" id="">
                                    </div>


                                    <div class="form-group col-md-12 {!! $errors->has('phone') ? 'has-error' : '' !!}">
                                        <input type="text" name="phone" id="" class="form-control">
                                    </div>

                                    <div class="form-group col-md-12 {!! $errors->has('message') ? 'has-error' : '' !!}">
                                        <textarea name="message" class="form-control" id="" cols="30" rows="10"></textarea>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <button type="submit" class="button button-3d button-large button-rounded button-primary"></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                </div>
                <div class="col-md-6 offset-1 card p-0">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="cart-product-remove border-top-0">&nbsp;</th>
                                    <th class="cart-product-thumbnail border-top-0">&nbsp;</th>
                                    <th class="cart-product-name border-top-0">Nom Produit</th>
                                    <th class="cart-product-quantity border-top-0">Quantiter</th>
                                </tr>
                            </thead>
                            <?php $cart = new App\Models\Cart(); ?>
                            <?php $panier = $cart->getItems(); ?>
                            <tbody>
                                @foreach ($panier as $key => $item)
                                    <tr class="cart_item">
                                        <td class="cart-product-remove">
                                            <a href="{{url('/cart/'.$key)}}" class="remove ajaxClick" title="Remove this item"><i class="icon-trash2"></i></a>
                                        </td>
                                        <td class="cart-product-thumbnail">
                                        <a href="#"><img width="64" height="64" src="{{asset('storage/'.$item['img'])}}" alt="Pink Printed Dress"></a>
                                        </td>
                                        <td class="cart-product-name">
                                            <a href="#">{{$item['name']}}</a>
                                        </td>
                                        <td class="cart-product-quantity">
                                            <div class="quantity clearfix">
                                                <input type="button" value="-" class="minus">
                                                <input type="text" name="qty[]" value="{{$item['qty']}}" class="qty" />
                                                <input type="button" value="+" class="plus">
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                                
                                <tr class="cart_item">
                                    <td colspan="6">
                                        <div class="row clearfix">
                                            {{-- <div class="col-lg-12 col-12 nopadding">
                                                <a href="#" class="button button-3d notopmargin fright">Envoyer la demande</a>
                                            </div> --}}
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        {{-- {{Form::close()}}  --}}

    </div>
</section>
@endsection

@section('js')
    <script>

        $(document).on('ready page:load', function() { 
                $(".qty").each(function(){
                    var total = $(this).val() * $(this).parent().children('.price-unit').val();
                    $(this).parent().parent().children('.tot').text(total+" DH" );
                });
                totalAllItems();
        });

        $('input').on('input',function(e){
            if($(this).val() >= 0){
                var total = $(this).val() * $(this).parent().children('.price-unit').val();
                $(this).parent().parent().children('.tot').text(total+" DH" );
            }
            totalAllItems();
        });

        function totalAllItems(){
            var totalItems = 0;
            $(".qty").each(function(){
                if($(this).val() >= 0){
                 totalItems = totalItems + ($(this).val() * $(this).parent().children('.price-unit').val());
                }
            });

            $('.totale-all').text(totalItems+" DH");
            $('.totale-all').children('input').val(totalItems);
             
            // console.log(totalItems);

        }

        
    </script>
@endsection
