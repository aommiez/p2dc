<?php
//system('ping -c1 -w1 110.164.70.33') ;
$s = "Online";
$ip = "110.164.70.33";
function ping($host)
{
    exec(sprintf('ping -c 1 -W 5 %s', escapeshellarg($host)), $res, $rval);
    return $rval === 0;
}
if (ping($ip) == 1 ) {
    $s = "<span style=\"color: green;\">Online</span>";
} else {
$s = "<span style=\"color: red;\">Offline</span>";
}

$vps1 = "110.164.70.34";
$vps1status = "<span style=\"color: green;\">Online</span>";
if (ping($vps1) == 1 ) {
$vps1status = "<span style=\"color: green;\">Online</span>";
} else {
$vps1status = "<span style=\"color: red;\">Offline</span>";
}

$vps2 = "110.164.70.35";
$vps2status = "<span style=\"color: green;\">Online</span>";
if (ping($vps2) == 1 ) {
$vps2status = "<span style=\"color: green;\">Online</span>";
} else {
$vps2status = "<span style=\"color: red;\">Offline</span>";
}

$dassd = "110.164.70.40";
$dassdstatus = "<span style=\"color: green;\">Online</span>";
if (ping($dassd) == 1 ) {
$dassdstatus = "<span style=\"color: green;\">Online</span>";
} else {
$dassdstatus = "<span style=\"color: red;\">Offline</span>";
}

$da102 = "115.178.63.102";
$da102status = "<span style=\"color: green;\">Online</span>";
if (ping($da102) == 1 ) {
$da102status = "<span style=\"color: green;\">Online</span>";
} else {
$da102status = "<span style=\"color: red;\">Offline</span>";
}

$cpanel1 = "110.164.70.43";
$cp1 = "<span style=\"color: green;\">Online</span>";
if (ping($cpanel1) == 1 ) {
$cp1 = "<span style=\"color: green;\">Online</span>";
} else {
$cp1 = "<span style=\"color: red;\">Offline</span>";
}

$pla2app = "110.164.70.44";
$pla2appstatus = "<span style=\"color: green;\">Online</span>";
if (ping($cpanel1) == 1 ) {
$pla2appstatus = "<span style=\"color: green;\">Online</span>";
} else {
$pla2appstatus = "<span style=\"color: red;\">Offline</span>";
}

$tmp_name = $tmp_fname = tempnam("/tmp", "COOKIE");
define('COOKIE_TEMP', $tmp_name);

$username = 'platoo';
$password = 'inl0500167';
$loginUrl = 'http://customer.3bb.co.th/login/index.php';

$curl_handle = curl_init ("http://server.com/restricted/login.php");

curl_setopt ($curl_handle, CURLOPT_COOKIEJAR, COOKIE_TEMP);
curl_setopt ($curl_handle, CURLOPT_RETURNTRANSFER, true);

$post_array = array("username" => $username, 'pass' => $password);

curl_setopt($curl_handle, CURLOPT_POSTFIELDS, $post_array);

$output = curl_exec ($curl_handle);

function get_url($url){
$ch = curl_init($url);
curl_setopt ($ch, CURLOPT_COOKIEFILE, COOKIE_TEMP);
curl_setopt ($ch, CURLOPT_RETURNTRANSFER, true);
$data = curl_exec($ch);
curl_close($ch);
return $data;
}

function getDataURL($url){
return "data:image/png;base64,".base64_encode(get_url($url));
}

?>
<style>
    .divText {
        padding: 10px;
        font-size: 18px;
    }
    #main {
        width: 900px;
        margin: 0px auto;
        padding: 50px;
        background-color: #ffffff;
    }
    body {
        background-color: #f1f1f1;
    }
    .shadow{
        box-shadow: inset 0px 0px 10px 0px #ABABAB,5px 5px 5px 1px #DDDDDD;
        -webkit-box-shadow: inset 0px 0px 10px 0px #ABABAB,5px 5px 5px 1px #DDDDDD;
        -moz-box-shadow: inset 0px 0px 10px 0px #ABABAB,5px 5px 5px 1px #DDDDDD;
        -o-box-shadow: inset 0px 0px 10px 0px #ABABAB,5px 5px 5px 1px #DDDDDD;
    }
    .serverText {
        font-size: 14px;
    }
    .serverText p {
        border-bottom: 1px dashed gray;
    }
</style>
<div id="main" class="shadow">
    <div style="float: left;padding-right: 20px;border-right: 1px dashed gray;">
        <div style="margin-top: -50px;">
            <h3>Welcome to  P2DC real-time bandwidth !</h3>
            <h5><a href="http://www.p2dc.com" target="_blank"> http://www.p2dc.com</a></h5>
        </div>
        <div>
            <div class="divText">
                Today Traffic `Daily' Graph (5 Minute Average)
            </div>
            <div>
                <img border="0" src="<?php echo getDataURL("http://customer.3bb.co.th/pass.php?url=http://10.11.11.65/stats/inl0500167-pla-too-fusion-day.png");?>">
            </div>
            <div class="divText">
                International Traffic
            </div>
            <div>
                <img border="0" src="<?php echo getDataURL("http://customer.3bb.co.th/pass.php?url=http://10.11.11.65/stats/corpall.csv_inl0500167-platoofusionac-10200_corporate.data-day.png");?>">
            </div>
            <div class="divText">
                `Weekly' Graph (30 Minute Average)
            </div>
            <div>
                <img border="0" src="<?php echo getDataURL("http://customer.3bb.co.th/pass.php?link-id=6393315");?>">
            </div>
            <div class="divText">
                `Monthly' Graph (2 Hour Average)
            </div>
            <div>
                <img border="0" src="<?php echo getDataURL("http://customer.3bb.co.th/pass.php?link-id=6393316");?>">
            </div>
            <div class="divText">
                `Yearly' Graph (1 Day Average)
            </div>
            <div>
                <img border="0" src="<?php echo getDataURL("http://customer.3bb.co.th/pass.php?link-id=6393317");?>">
            </div>
        </div>
    </div>
    <div style="padding-left: 10px;float: left;width: 278px;" class="serverText">
        <p>Main network : <?php echo $s; ?></p>
        <p>VPS Server 1 : <?php echo $vps1status; ?></p>
        <p>VPS Server 2 : <?php echo $vps2status; ?></p>
        <p>Direct Admin 1 : Pla2api.com : <?php echo $dassdstatus; ?></p>
        <p>Direct Admin 2 : Pla2.com : <?php echo $da102status; ?></p>
        <p>CPanel 1 : Pla2fusion.info : <?php echo $cp1; ?></p>
        <p>Pla2 Apps API 1 : <?php echo $pla2appstatus; ?></p>
        IP List Check : comming soon
    </div>
    <div style="clear: both"></div>
</div>
