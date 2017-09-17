<?php
require_once __DIR__ . '/inc/boostrap.php';
$articles = $bdd->query('SELECT * FROM mxm_articles');
$mode_edition = 0;
if(isset($_GET['edit']) AND !empty($_GET['edit'])) {
   $mode_edition = 1;
   $edit_id = htmlspecialchars($_GET['edit']);
   $edit_article = $bdd->prepare('SELECT * FROM mxm_articles WHERE id = ?');
   $edit_article->execute(array($edit_id));
   if($edit_article->rowCount() == 1) {
      $edit_article = $edit_article->fetch();
   } else {
      die('Erreur : l\'article n\'existe pas...');
   }
}
if(isset($_POST['article_titre'], $_POST['article_contenu'])) {
   if(!empty($_POST['article_titre']) AND !empty($_POST['article_contenu'])) {

      $article_titre = htmlspecialchars($_POST['article_titre']);
      $article_contenu = htmlspecialchars($_POST['article_contenu']);
      if($mode_edition == 0) {
         $ins = $bdd->prepare('INSERT INTO mxm_articles (titre, contenu, date_time_publication,
           id_auteur) VALUES (?, ?, NOW(), ?)');
         $ins->execute(array($article_titre, $article_contenu, $_SESSION['id']));
         $lastid = $bdd->lastInsertId();

         if(isset($_FILES['miniature']) AND !empty($_FILES['miniature']['name'])) {
            if(exif_imagetype($_FILES['miniature']['tmp_name']) == 2) {
               $chemin = 'miniatures/'.$lastid.'.jpg';
               move_uploaded_file($_FILES['miniature']['tmp_name'], $chemin);
            } else {
               $message = 'Votre image doit être au format jpg';
            }
         }
         $message = 'Votre article a bien été posté';
         header('Location: index.php');
      } else {
         $update = $bdd->prepare('UPDATE mxm_articles SET titre = ?, contenu = ?, date_time_edition = NOW() WHERE id = ?');
         $update->execute(array($article_titre, $article_contenu, $edit_id));
         header('Location: article.php?id='.$edit_id);
         $message = 'Votre article a bien été mis à jour !';
      }
   } else {
      $message = 'Veuillez remplir tous les champs';
   }
}
    if(isset($_GET['id']) AND $_GET['id'] > 0)
    {
        $getid = intval($_GET['id']);
        $requser = $bdd->prepare('SELECT * FROM mxm_membres WHERE id = ?');
        $requser->execute(array($getid));
        $userinfo = $requser->fetch();
    }
    if (isset($_SESSION['id']) AND $userinfo['id'] == $_SESSION['id']) {
    ?>
    <!DOCTYPE html>
    <html lang="fr">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width">
        <meta name="description" content="Rcraft-Gamers.tk référence plus de textures, mods, maps, outils, web devloppement">
        <meta name="google-site-verification" content="IK_NK02orJfKXQyM-WkBB5r9L6msKpvlsV09KJKMVrY">
        <meta name="application-name" content="&nbsp;">
        <meta name="msapplication-TileColor" content="#FFFFFF">
        <title>Rcraft-Gamers</title>
        <link rel="icon" type="image/x-icon" href="">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="css/gsdk.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="css/app.css">
		<link rel="icon" sizes="192x192" href="../icon/icon.ico">
    </head>
    <body>

    <div class="loader" style="display: none;">
        <div class="sk-folding-cube">
            <div class="sk-cube1 sk-cube"></div>
            <div class="sk-cube2 sk-cube"></div>
            <div class="sk-cube4 sk-cube"></div>
            <div class="sk-cube3 sk-cube"></div>
        </div>
    </div>

    <div id="navbar-full">
        <div id="navbar">
            <nav class="navbar navbar-default navbar-transparent navbar-fixed-top">
                <div class="container">

                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar bar1"></span>
                            <span class="icon-bar bar2"></span>
                            <span class="icon-bar bar3"></span>
                        </button>
                        <a class="navbar-brand" href="#">
                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 960 560" style="enable-background:new 0 0 960 560;" xml:space="preserve" class="logo">
                          <polygon class="st0" points="826,123.4 826,538.5 648,434.3 648,226.9 "></polygon>
                                <polygon class="st0" points="110,121.4 110,536.5 288.2,433.2 288.7,226.8 "></polygon>
                                <polygon class="st1" points="825.9,123.4 647,21.7 468,126.1 468,125.7 289.3,20.5 109.5,121.4 467,332 467,332.4 "></polygon>
                        </svg>
                        </a>
                    </div>

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tops </a>
                            </li>
                            <li class="hidden-xs">
                                <hr>
                            </li>
                            <li>
                                <a href="#actualites">News</a>
                            </li>
                            <li class="dropdown">
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">html/ css /js</a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Minecraft </a>
                            </li>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Unity Game </a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Unity code </a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Partenaires </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <div class="wrapper ">
        <div class="parallax filter-black">
            <div class="parallax-image" id="backgroundAnimation" style="background:url('img/font-1.jpg') center center / cover"></div>
            <div class="small-info">
                <div class="row">
                    <div class="col-xs-8 col-sm-6 col-md-4 col-lg-2 col-xs-offset-2 col-sm-offset-3 col-md-offset-4 col-lg-offset-5">
                        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 960 560" style="enable-background:new 0 0 960 560;" xml:space="preserve" class="logo">
<polygon class="st0" points="826,123.4 826,538.5 648,434.3 648,226.9 "></polygon>
                            <polygon class="st0" points="110,121.4 110,536.5 288.2,433.2 288.7,226.8 "></polygon>
                            <polygon class="st1" points="825.9,123.4 647,21.7 468,126.1 468,125.7 289.3,20.5 109.5,121.4 467,332 467,332.4 "></polygon>
</svg>
                    </div>
                </div>
                <h1>Rcraft-Gamers.tk</h1>
                <h3>Votre référence gaming depuis 2017.</h3>
            </div>
        </div>
        <div id="homepage">
            <div id="about-home">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <h2>Qu'est-ce que Rcraft-Gamers.tk ?</h2>
                            <p>Nous sommes une équipe de passioné de Minecraft, de programation et nous publions régulièrement des articles qui présentent :</p>
                            <ul>
                                <li><strong>html/ css /js</strong> pour ajouter diverses fonctionnalités a vot page web</li>
                                <li><strong>Minecraft</strong> pour tout les Minecraftien qui veulent se rencontrer</li>
                                <li><strong>Jeux Unitu</strong> créées par la communauté</li>
                                <li><strong>garry's mod</strong> notre server est ouvert h24/h24</li>
                            </ul>
                            <p>Tout en vous informant de l'actualité du Jeu avec <strong>des News</strong> sur les Mises à jour, les Snapshots et autres sujets divers.</p>
                            <p>Vous pouvez nous rejoindre pour discuter ensemble ou nous poser des questions sur <a href="https://discord.gg/xn47R2" target="_blank">Discord</a>.</p>
                            <br>
                        </div>
                    </div>
                </div>
            </div>

            <div id="articles-grid">
                <div class="container">
                    <h2 class="text-center">Redaction</h2>
                    <form method="POST" enctype="multipart/form-data">
                       <input type="text" name="article_titre" placeholder="Titre"<?php if($mode_edition == 1) { ?> value="<?=
                       $edit_article['titre'] ?>"<?php } ?> /><br />
                       <textarea name="article_contenu" placeholder="Contenu de l'article"><?php if($mode_edition == 1) { ?><?=
                       $edit_article['contenu'] ?><?php } ?></textarea><br />
                       <?php if($mode_edition == 0) { ?>
                       <input type="file" name="miniature" /><br />
                       <?php } ?>
                       <input type="submit" value="Envoyer l'article" />
                    </form>
                    <br />
                    <div style="color: red" ><?php if(isset($message)) { echo $message; } ?>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer footer-big footer-black">

        <div class="container">
            <div class="social-area text-center">
                <h5>Rejoignez-nous</h5>
                <a href="#" target="_blank" class="btn btn-social btn-round">
                    <i class="fa fa-facebook"></i>
                </a>
                <a href="#" target="_blank" class="btn btn-social btn-round">
                    <i class="fa fa-twitter"></i>
                </a>
                <a href="#" target="_blank" class="btn btn-social btn-round">
                    <i class="fa fa-instagram"></i>
                </a>
                <a href="#" rel="publisher" target="_blank" class="btn btn-social btn-round">
                    <i class="fa fa-google-plus"></i>
                </a>
                <a href="#" target="_blank" class="btn btn-social btn-round">
                    <i class="fa fa-youtube-play"></i>
                </a>
            </div>
            <div class="copyright">
                © 2011 - 2017 Rcraft-Gamers.tk, par des coder pour des Utilisateur. <a href="#" style="color:#777777;text-decoration: underline;">Nos mentions légales</a>
            </div>
        </div>
    </footer>

    </body>
    </html>
<?php
}else {
  header('Location: index.php');
}
 ?>
