<!doctype html>
<html class="no-js" lang="">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Cat Daddy</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <!-- Place favicon.ico in the root directory -->

    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/styles.css">
  </head>
  <body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <section class="welcome">
      <div class="welcome__body vcenter">
        <div class="vcenter-parent">
          <div class="vcenter hcenter">
            <div class="welcome__logo">
              <h1>Cat Daddy</h1>
            </div>
            <div class="welcome__login" id="welcome-login">
              <form action="login.php" method="post">
                <p><input type="text" name="username" placeholder="Username"></p>
                <p><input type="password" name="password" placeholder="Password"></p>
                <button class="btn btn__login" id="user-login" type="submit" name="login" value="login">Log In</button>
                <div class="welcome__unregistered">
                  <button class="btn btn__reg">Create Account</button>
                </div>
              </form>
            </div>
            <div class="welcome__register" id="welcome-reg">
              <form action="register.php" method="post">
                <p><input type="text" name="name" placeholder="First Name"></p>
                <p><input type="email" name="email" placeholder="Email"></p>
                <p><input type="text" name="username" placeholder="Username"></p>
                <p><input type="password" name="password" Placeholder="Password"></p>
                <button class="btn btn__reg" id="user-reg" type="submit" name="register" value="register">Create Account</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-2.1.4.min.js"><\/script>')</script>
    <script src="js/scripts.js"></script>
    <script src="//localhost:35729/livereload.js"></script>
  </body>
</html>
