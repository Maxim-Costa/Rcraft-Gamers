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
    <script src="js/modernizr.custom.js"></script>
  </head>
  <body style="background-image: url(images/herobrine-1920x1080-78932-jour-204-le-roi.jpg); height: 255px;background-repeat: no-repeat;background-color: black;">
    <div style="text-align: center;"><br />
    </div>
    <div style="text-align: center;">
      <h1>Killer.crafteur</h1>
      <p>calendrier des video</p>
    </div>
    <div style="text-align: center;"><iframe width="800" height="600" frameborder="0"
        src="https://calendar.google.com/calendar/embed?height=600&amp;wkst=2&amp;bgcolor=%23ffffff&amp;src=mxmcosta%40gmail.com&amp;color=%2329527A&amp;ctz=Europe%2FParis"
        style="border:solid 1px #777" scrolling="no"></iframe> </div><nav id="bt-menu" class="bt-menu"> <br />
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
