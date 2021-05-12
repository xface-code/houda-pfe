@extends('layouts.app')

@section('content')

                    {{-- <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

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
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Register') }}
                                </button>
                            </div>
                        </div>
                    </form> --}}
                    <section class="jumbotron text-center">
                        <div class="container">
                           <h1 class="jumbotron-heading">Espace client</h1>
                        </div>
                    </section>
                    <!-- REGISTRATION FORM -->
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="text-center" style="padding:50px 0">
                                    <div class="logo1">S'inscrire</div>
                                    <!-- Main Form -->
                                    <div class="login-form-1 ">
                                        <form id="register-form" class="text-left" method="POST" action="{{ route('register') }}">
                                            @csrf
                                            <div class="login-form-main-message"></div>
                                            <div class="main-login-form">
                                                <div class="login-group">
                                                    <div class="form-group">
                                                        <label for="reg_username" class="sr-only">Email </label>
                                                        <input type="text" class="form-control" id="reg_username" name="email" placeholder="E-mail">
                                                        @error('email')
                                                            <span class="invalid-feedback" role="alert" style="color: red">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="reg_password" class="sr-only">Password</label>
                                                        <input type="password" class="form-control" id="reg_password" name="password" placeholder="Mot de passe">
                                                        @error('password')
                                                            <span class="invalid-feedback" role="alert" style="color: red">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="reg_password_confirm" class="sr-only">Password Confirm</label>
                                                        <input type="password" class="form-control" id="reg_password_confirm" name="password_confirmation" placeholder="confirmer votre mot de passe">
                                                    </div>
                                                
                                                </div>
                                                <button type="submit" class="btn btn-primary pull-center bnt-primary-1">inscription</button>
                                            </div>
                                        </form>
                                    </div>
                                    <!-- end:Main Form -->
                                </div>
                            </div>
                            <div class=""></div>
                            <div class="col-md-6 ">
                                <div class="text-center " style="padding:50px 0">
                                    <div class="logo1">Se connecter</div>
                                    <p class="text-justify" style="color: #4c4c4c;padding: 17px 80px">
                                    Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser
                                    </p>
                                    <a href="connection.php"><button type="button" class="btn btn-primary bnt-primary-2">connexion</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
@endsection
