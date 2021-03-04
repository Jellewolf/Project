<?php
function active($currect_page){
  $url_array =  explode('/', $_SERVER['REQUEST_URI']) ;
  $url = end($url_array);  
  if($currect_page == $url){
      echo 'activepage'; //class name in css 
  } 
}
?>

	<div class="logo">
		<a href="/home.php"><img src="/images/logo.png" alt="logo"></a>
		<a href="/home.php"><p class="banner">Apotheek Dhr. J. Schut</p></a>
	</div>
			<div class="listtext">
				<ul>
					<li class="<?php active('home.php');?>"><a href="/home.php">Home</a></li>
					<li class="<?php active('service.php');?>"><a href="/pages/service.php">Service</a></li>
					<li class="<?php active('information.php');?>"><a href="/pages/information.php">Voorlichting</a></li>
					<li class="<?php active('login.php');?>"><a href="/pages/login.php">Login</a></li>
   	 			</ul>
			</div>	
    			<!--This is a menu include not a stand alone file just a file for the main menu/logo-->


