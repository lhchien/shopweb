<?php
if(isset($_POST['email']) & isset($_POST['pass'])){
	include_once("class/login.php");	
	$login = new login;
	if($login->check_user($_POST['email'], $_POST['pass'])>0)
	{
		$info = $login->log_in($_POST['email'],$_POST['pass']);
		foreach ($info as $title => $value)
			$_SESSION['admin'][$title]= $value;
	}
		redirect ("",0);
}
?>
<div class="col-md-4"></div>
<div class="col-md-4">
	<form class="form-signin" method="POST" action="">
		<h2 class="form-signin-heading">Please sign in</h2>
		<label for="inputEmail" class="sr-only">Email address</label>
		<input type="email" id="inputEmail" class="form-control" placeholder="Email address" name="email" required autofocus>
		<label for="inputPassword" class="sr-only">Password</label>
		<input type="password" id="inputPassword" class="form-control" placeholder="Password" name="pass" required>
		<div class="checkbox">
			<label>
				<input type="checkbox" value="remember-me"> Remember me
			</label>
		</div>
		<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
	</form>
</div>
<div class="col-md-4"></div>
