<?php
require_once __DIR__ . '/../inc/boostrap.php';
?>
<!DOCTYPE html PUBLIC>
<html class=" js no-touch">
  <head>
   <meta http-equiv="content-type" content="application/xhtml+xml; charset=iso-8859-1" />
    <title>maxim site </title>
    <meta content="la page maxim site." name="description" />
    <meta content="all" name="Robots" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <link href="css/normalize.css" type="text/css" rel="stylesheet" />
    <link href="css/icons.css" type="text/css" rel="stylesheet" />
    <link href="css/style2.css" type="text/css" rel="stylesheet" />
    <script src="js/modernizr.custom.js"></script>
  </head>
  <body style="background-image: url(images/herobrine-1920x1080-78932-jour-204-le-roi.jpg); height: 255px;background-repeat: no-repeat;background-color: black;" >
    <div style="text-align: center;"><br />
      <div style="text-align: center;">Bienvenus sur ma chains youtube</div>
      <h1 style="text-align: center;">Killer.crafteur</h1>
    </div>
    <div style="text-align: center;"><iframe width="560" height="315" src="https://www.youtube.com/embed/oRfF-26CSXE" frameborder="0" allowfullscreen></iframe><br />
    </div>
      <nav class="bt-menu" id="bt-menu"> <br />
      <br />
      <br />
      <br />
      <br />
      <a class="bt-menu-trigger" href="html/profil.html"></a>
      <ul>
        <li><a class="bt-icon icon-home" href="page-acceuil.php"></a><br />
        </li>
        <li><a class="bt-icon icon-calendar" href="calendrier.php"></a><br />
        </li>
        <li><a class="bt-icon icon-folder-add" href="video.php"></a><br />
        </li>
        <li><a class="bt-icon icon-download" href="../profil.php?id=<?php echo $_SESSION['id'] ?>"></a><br />
        </li>
        <li><a class="bt-icon icon-star" href="page-jeux.php"></a><br />
        </li>
      </ul>
    </nav>
    <script src="js/classie.js"></script>
    <script src="js/borderMenu.js"></script>
  </body>
</html>
