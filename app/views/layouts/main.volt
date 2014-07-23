<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">P2DC</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li id="mainLink"><a href="{{ url("main") }}">Network Status</a></li>
                <li id="customerLink"><a href="{{ url("customer") }}">Customer</a></li>
                <li><a href="#b">Customer Order</a></li>
                <li><a href="#c">Bank transfer</a></li>
                <li><a href="{{ url("main/logout") }}">Logout</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>
<div class="container" style="padding: 50px 16px 10px 16px;">
    {{ content() }}
</div>
<script type="application/javascript">
    $(document).ready(function() {
        var a = location.pathname.split("/");

        if ( a.length > 2 && a[2] == "main" ) {
            $("#mainLink").addClass("active");
        } else if ( a.length > 2 && a[2] == "customer" ) {
            $("#customerLink").addClass("active");
        }
    });
</script>