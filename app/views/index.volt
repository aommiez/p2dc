<!DOCTYPE html>
<html lang="en">
	<head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        {{ get_title() }}
        {{ stylesheet_link('css/bootstrap/bootstrap.css') }}
        {{ stylesheet_link('css/bootstrap/bootstrap-responsive.css') }}
        {{ stylesheet_link('css/bootstrap/bootstrap-theme.css') }}
        {{ stylesheet_link('css/bootstrap/font-awesome.css') }}
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="http://getbootstrap.com/docs-assets/js/html5shiv.js"></script>
        <script src="http://getbootstrap.com/docs-assets/js/respond.min.js"></script>
        <![endif]-->
        <meta name="description" content="Pla2 DataCenter">
        <meta name="author" content="MRG">
	</head>
	<body>
		{{ content() }}
    <!-- Javascript Include -->
    {{ javascript_include('js/jquery/jquery.min.js') }}
    {{ javascript_include('js/bootstrap/bootstrap.js') }}
	</body>
</html>