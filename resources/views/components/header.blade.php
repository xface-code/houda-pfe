<header id="header" class="0">
	<div id="header-wrap">
		<div class="container clearfix">
			<div id="primary-menu-trigger">
				<i class="icon-reorder"></i>
			</div>
			<div id="logo" class="">
				<a href="{{url('./')}}" class="standard-logo" data-dark-logo="{{asset('assets/home/imgs/logo.png')}}"><img src="{{asset('assets/home/imgs/logo.png')}}" alt="{{setting('site.title')}}"></a>
				<a href="{{url('./')}}" class="retina-logo" data-dark-logo="{{asset('assets/home/imgs/logo.png')}}"><img src="{{asset('assets/home/imgs/logo.png')}}" alt="{{setting('site.title')}}"></a>
			</div>
			<nav id="primary-menu">
				<div id="top-cart">
                    <?php $cart = new App\Models\Cart(); ?>

                    <?php $panier = $cart->getItems();?>
					<a href="#" id="top-cart-trigger"><i class="icon-shopping-cart"></i><span>{{count($panier)}}</span></a>
					@if (count($panier) > 0)
						<div class="top-cart-content">
								<div class="top-cart-title">
									<h4>Notre Produits</h4>
								</div>
								@foreach ($panier as $item)
								<div class="top-cart-items">
									<div class="top-cart-item clearfix">
										<div class="top-cart-item-image">
											<a href="#">
												<img src="{{asset('storage/'.$item['img'])}}">
											</a>
										</div>
										<div class="top-cart-item-desc pr-3">
											<a href="#">{{$item['name']}}</a>													
											<span class="top-cart-item-quantity">{{$item['qty']}}</span>
											<span class="delete-icone"><a href="#">x</a></span>
										</div>
									</div>								
								</div>
								@endforeach	
								<div class="top-cart-action clearfix">
									<a href="{{url('/cart/')}}" class="button button-3d button-small nomargin fright">Voir Ma carte</a>
								</div>
						</div>
					@endif
				</div>
                <?php
                    $categories = new App\Category();                
                ?>
				<ul>
					<li><a href="{{url('/')}}"><div>Accueil</div></a></li>
                    @foreach ($categories->getParentItems() as $item)
                        <li><a href="{{url($item->slug)}}"><div> {{$item->nom}} </div></a>
                            @if ($item->categories)
                            <ul>
                                @foreach ($item->categories as $itemS)
                                <li>
                                    <a href="{{url($itemS->slug)}}"><div>{{$itemS->nom}}</div></a>
                                    @if ($itemS->categories)
                                        @foreach ($itemS->categories as $itemSs)
                                        <li>
                                            <a href="{{url($itemSs->slug)}}"><div>{{$itemSs->nom}}</div></a>
                                        </li>
                                        @endforeach
                                    @endif
                                </li>
                                @endforeach
                            </ul>
                            @endif
                    </li>
                    @endforeach
				</ul>
				
			</nav>
		</div>
	</div>
</header>
