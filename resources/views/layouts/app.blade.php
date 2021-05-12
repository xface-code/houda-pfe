<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <link rel="stylesheet" href="{{asset('assets/css/bootstrap.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{asset('assets/css/bootstrap-extended.min.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{asset('assets/css/style.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{asset('assets/css/dark.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{asset('assets/css/font-icons.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{asset('assets/css/fonts/font-awesome/css/font-awesome.min.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{asset('assets/css/animate.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{asset('assets/css/magnific-popup.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{asset('assets/css/sweetalert2.min.css')}}" rel="stylesheet" />
	<link rel="stylesheet" href="{{asset('assets/css/bs-select.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{asset('assets/css/bs-switches.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{asset('assets/css/radio-checkbox.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{asset('assets/css/bs-filestyle.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{asset('assets/css/datepicker.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{asset('assets/css/responsive.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{asset('assets/css/ami-style.css')}}" type="text/css" />
    @yield('css')

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
        @include('components.header',['margin' => true])
            @yield('content')
        @include('components.footer')
        <div id="gotoTop" class="icon-angle-up"></div>

        <script src="{{asset('assets/js/jquery.js')}}"></script>
        <script src="{{asset('assets/js/plugins.js')}}"></script>
        <script src="{{asset('assets/js/sweetalert2.all.min.js')}}"></script>
        <script src="{{asset('assets/js/bs-select.js')}}"></script>
        <script src="{{asset('assets/js/selectsplitter.js')}}"></script>
        <script src="{{asset('assets/js/bs-switches.js')}}"></script>
        <script src="{{asset('assets/js/bs-filestyle.js')}}"></script>
        <script src="{{asset('assets/js/moment.js')}}"></script>
        <script src="{{asset('assets/js/datepicker.js')}}"></script>
        <script src="{{asset('assets/js/datepicker.fr.min.js')}}"></script>
        <script src="{{asset('assets/js/functions.js')}}"></script>
        @yield('js')

</body>
</html>
