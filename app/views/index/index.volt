<style>
    /*
Inspired by http://dribbble.com/shots/917819-iPad-Calendar-Login?list=shots&sort=views&timeframe=ever&offset=461
*/
    body {
        /*background: url(http://habrastorage.org/files/c9c/191/f22/c9c191f226c643eabcce6debfe76049d.jpg);*/
        background-color: #000000;
    }

    .jumbotron {
        text-align: center;
        width: 30rem;
        border-radius: 0.5rem;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        position: absolute;
        margin: 4rem auto;
        background-color: #fff;
        padding: 2rem;
        height: 292px;
    }

    .container .glyphicon-list-alt {
        font-size: 10rem;
        margin-top: 3rem;
        color: #f96145;
    }

    input {
        width: 100%;
        margin-bottom: 1.4rem;
        padding: 1rem;
        background-color: #ecf2f4;
        border-radius: 0.2rem;
        border: none;
    }
    h2 {
        margin-bottom: 3rem;
        font-weight: bold;
        color: #ababab;
    }
    .btn {
        border-radius: 0.2rem;
    }
    .btn .glyphicon {
        font-size: 3rem;
        color: #fff;
    }
    .full-width {
        background-color: #8eb5e2;
        width: 100%;
        -webkit-border-top-right-radius: 0;
        -webkit-border-bottom-right-radius: 0;
        -moz-border-radius-topright: 0;
        -moz-border-radius-bottomright: 0;
        border-top-right-radius: 0;
        border-bottom-right-radius: 0;
    }

    .box {
        position: absolute;
        bottom: 0;
        left: 0;
        margin-bottom: 3rem;
        margin-left: 3rem;
        margin-right: 3rem;
    }
</style>
<div class="jumbotron">
    <div class="container">
        <h2>P2DC Admin</h2>
        <div class="box">
            <form action="{{ url("index/login") }}" method="post">
            <input type="text" placeholder="username" name="user">
            <input type="password" placeholder="password" name="password">
            <button class="btn btn-default full-width"><span class="glyphicon glyphicon-ok"></span></button>
            </form>
        </div>
    </div>
</div>