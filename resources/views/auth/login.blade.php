@extends('layouts.app')

@section('content')

                    {{-- <form method="POST" action="{{ route('login') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-6 offset-md-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                    <label class="form-check-label" for="remember">
                                        {{ __('Remember Me') }}
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Login') }}
                                </button>

                                @if (Route::has('password.request'))
                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                        {{ __('Forgot Your Password?') }}
                                    </a>
                                @endif
                            </div>
                        </div>
                    </form> --}}

                    <section class="jumbotron text-center">
                        <div class="container">
                           <h1 class="jumbotron-heading">Espace client</h1>
                        </div>
                    </section>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="text-center" style="padding:50px 0">
                                    <div class="logo1">Connexion</div>
                                    <!-- Main Form -->
                                    <div class="login-form-1">
                                        <form id="login-form" class="text-left" method="POST" action="{{ route('login') }}">
                                            @csrf
                                            <div class="login-form-main-message"></div>
                                            <div class="main-login-form" style="text-align: center;">
                                                <div class="login-group">
                                                    <div class="form-group">
                                                        <label for="lg_username" class="sr-only">E-mail</label>
                                                        <input type="text" class="form-control" id="lg_username" name="email" placeholder="E-mail">
                                                        @error('email')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="lg_password" class="sr-only">Mot de passe</label>
                                                        <input type="password" class="form-control" id="lg_password" name="password" placeholder="Mot de passe">
                                                        @error('password')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group login-group-checkbox" style="text-align: left;">
                                                        <input type="checkbox" id="lg_remember" name="remember">
                                                        <label for="lg_remember">se souvenir pour moi</label>
                                                    </div>
                                                </div>
                                                <!-- <button type="submit" class="login-button"><i class="fa fa-chevron-right"></i></button> -->
                                                <button type="submit" class="btn btn-primary pull-center bnt-primary-1" >se connecter</button>
                                            </div>
                                        </form>
                                    </div>
                                    <!-- end:Main Form -->
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="text-center" style="padding:50px 0">
                                    <div class="logo1">Creation du compte</div>
                                    <p class="text-justify" style="color: #4c4c4c;padding: 17px 80px">
                                    Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser
                                    </p>
                                    <a href="{{url('register')}}"><button type="button" class="btn btn-primary bnt-primary-2">s'inscrire</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    
@endsection
