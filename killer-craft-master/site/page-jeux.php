<?php
require_once __DIR__ . '/../inc/boostrap.php';
?>
<!DOCTYPE html PUBLIC>
<html>
  <head>
    <meta http-equiv="content-type" content="application/xhtml+xml; charset=iso-8859-1" />
    <title>maxim site </title>
    <meta name="description" content="la page maxim site." />
    <meta name="Robots" content="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/icons.css" />
    <link rel="stylesheet" type="text/css" href="css/style2.css" />
    <link rel="stylesheet" type="text/css" href="css/video.css" />
    <script src="js/modernizr.custom.js"></script>
  </head>
  <body style="background-image: url(images/herobrine-1920x1080-78932-jour-204-le-roi.jpg); height: 255px;background-repeat: no-repeat;background-color: black;"><br />
    <div id="container">
      <div id="content" style="margin-left: 80px; text-align: center; width: 812px;">
        <div class="post" id="post-2421">
          <h1 style="margin-left: -6px; text-align: center;" id="max-2">Killer.crafteur
          </h1>
          <h1 style="margin-left: -6px; text-align: center;"><u>voici mes jeux</u> </h1>
          <h1 style="margin-left: -6px; text-align: left;"><br />
          </h1>
          <h1 style="margin-left: -6px; text-align: left;">jeux:</h1>
          <p><br />
          </p>
          <p><br />
          </p>
          <a style="color: black; text-decoration:none; " id="max-6" href="jeux/jeux-1/index.php"><h2>jeux-1: jeux de serpent 1</h2></a>
          <br />
          <a style="color: black; text-decoration:none; " id="max-6" href="jeux/jeux-2/index.php"><h2>jeux-2: jeux de serpent 2</h2></a>
          <br />
          <a style="color: black; text-decoration:none; " id="max-6" href="jeux/jeux-3/index.php"><h2>jeux-3: jeux de puissance 4</h2></a>
          <br />
          <a style="color: black; text-decoration:none; " id="max-6" href="jeux/jeux-4/index.php"><h2>jeux-4: jeux de en 3D </h2></a>

           </p>
          <p style="text-align: left;"><br />
          </p>
          <p style="text-align: left;"><br />
          </p>
          <p style="text-align: left;"><br />
          </p>
          <p style="text-align: left;"><br />
          </p>
          <p style="text-align: left; height: 34px;"><br />
          </p>
        </div>
      </div>
    </div>
    <nav id="bt-menu" class="bt-menu"> <br />
      <br />
      <br />
      <br />
      <br />
      <a href="#" class="bt-menu-trigger"></a>
      <ul>
        <li><a href="page-acceuil.php" class="bt-icon icon-home"></a><br />
        </li>
        <li><a href="calendrier.php" class="bt-icon icon-calendar"></a><br />
        </li>
        <li><a href="video.php" class="bt-icon icon-folder-add"></a><br />
        </li>
        <li><a href="../profil.php?id=<?php echo $_SESSION['id'] ?>" class="bt-icon icon-download"></a><br />
        </li>
        <li><a href="page-jeux.php" class="bt-icon icon-star"></a><br />
        </li>
      </ul>
    </nav>
    <script src="js/classie.js"></script>
    <script src="js/borderMenu.js"></script>
  </body>
</html>
