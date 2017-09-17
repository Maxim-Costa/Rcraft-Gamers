<?php
require_once __DIR__ . '/inc/boostrap.php';
$articles = $bdd->query('SELECT * FROM mxm_articles');

$requser = $bdd->prepare('SELECT * FROM mxm_membres WHERE id = ?');
$requser->execute(array($_SESSION['id']));
$userinfo = $requser->fetch();


    if(isset($_GET['id']) AND !empty($_GET['id'])) {
       $get_id = htmlspecialchars($_GET['id']);
       $article = $bdd->prepare('SELECT * FROM mxm_articles WHERE id = ?');
       $article->execute(array($get_id));
       if($article->rowCount() == 1) {
          $article = $article->fetch();
          $id = $article['id'];
          $titre = $article['titre'];
          $contenu = $article['contenu'];
          $likes = $bdd->prepare('SELECT id FROM likes WHERE id_article = ?');
          $likes->execute(array($id));
          $likes = $likes->rowCount();
          $dislikes = $bdd->prepare('SELECT id FROM dislikes WHERE id_article = ?');
          $dislikes->execute(array($id));
          $dislikes = $dislikes->rowCount();
       } else {
          die('Cet article n\'existe pas !');
       }
    } else {
       die('Erreur');
    }
    if(isset($_GET['id']) AND !empty($_GET['id'])) {
       $getid = htmlspecialchars($_GET['id']);
       $article = $bdd->prepare('SELECT * FROM articles WHERE id = ?');
       $article->execute(array($getid));
       $article = $article->fetch();
       if(isset($_POST['submit_commentaire'])) {
          if(isset($_POST['pseudo'],$_POST['commentaire']) AND !empty($_POST['pseudo']) AND !empty($_POST['commentaire'])) {
             $pseudo = htmlspecialchars($_POST['pseudo']);
             $commentaire = htmlspecialchars($_POST['commentaire']);
             if(strlen($pseudo) < 25) {
                $ins = $bdd->prepare('INSERT INTO commentaires (pseudo, commentaire, id_article) VALUES (?,?,?)');
                $ins->execute(array($pseudo,$commentaire,$getid));
                $c_msg = "<span style='color:green'>Votre commentaire a bien été posté</span>";
             } else {
                $c_msg = "Erreur: Le pseudo doit faire moins de 25 caractères";
             }
          } else {
             $c_msg = "Erreur: Tous les champs doivent être complétés";
          }
       }
       $commentaires = $bdd->prepare('SELECT * FROM commentaires WHERE id_article = ? ORDER BY id DESC');
       $commentaires->execute(array($getid));
       if(isset($_FILES['miniature']) AND !empty($_FILES['miniature']['name'])) {
          if(exif_imagetype($_FILES['miniature']['tmp_name']) == 2) {
             $chemin = 'miniatures/'.$lastid.'.jpg';
             move_uploaded_file($_FILES['miniature']['tmp_name'], $chemin);
          } else {
             $message = 'Votre image doit être au format jpg';
          }
       }

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
                        <?php
                        if (isset($_SESSION['id']) AND $userinfo['id'] == $_SESSION['id']) {
                            ?>
                            <div class="col-md-4">
                                <br>
                                <div class="card card-user">
                                    <div class="image image-plain"></div>
                                    <div class="content text-center">
                                        <div class="author">
                                            <?php $img = is_null($userinfo["avatar"]) ? 'img/minecraft_logo_round.jpg' : 'avatars/' . $userinfo['avatar'] ;?>
                                            <img class="avatar" src="<?php echo $img; ?>" alt="Logo Minecraft" />
                                            <h4 class="title"><SELECT name="type" id="type" onchange="changementType();">
                                                    <OPTION value="0" selected="selected"><?php echo $userinfo['pseudo']; ?></OPTION>
                                                    <OPTION value="1">Edition</OPTION>
													                                       <?php if ($_SESSION['id'] == 1 ) { ?>
													                                                      <OPTION value="2">Admin pannel</OPTION>
													                                                                   <?php } ?>
                                                </SELECT><br>
                                                <small>by Rcraft</small>
                                            </h4>
                                        </div>

                                        <div id="0" style="display:block">
                                            <form class="form1" method="POST" action="">
                                                <h5 class="title">Pseudo :
                                                    <a>
                                                        <?php echo $userinfo['pseudo']; ?>
                                                    </a>
                                                </h5>
                                                <h5 class="title">Email :
                                                    <a>
                                                        <?php echo $userinfo['mail']; ?>
                                                    </a>
                                                </h5>
                                                <h5 class="title">forum :
                                                    <a href="forum/" >
                                                        Go !
                                                    </a>
                                                </h5>
                                                <div class="footer text-center">
                                                    <a href="deconnexion.php" target="_blank" class="btn btn-info btn-round btn-wd"> Deconnexion</a>
                                                </div>
                                            </form>
                                        </div>





                                        <div id="1" style="display:none">
                                            <form class="form1" method="POST" action="">
                                                <h5 class="title">Pseudo :
                                                    <a>
                                                        <input type="text" name="newpseudo" placeholder="Pseudo" value="<?php echo $user['pseudo']; ?>" />
                                                    </a>
                                                </h5>
                                                <h5 class="title">Email :
                                                    <a>
                                                        <input type="text" name="newmail" placeholder="Mail" value="<?php echo $user['mail']; ?>" />
                                                    </a>
                                                </h5>
                                                <h5 class="title">Mdp :
                                                    <a>
                                                        <input type="password" name="newmdp1" placeholder="Mot de passe"/>
                                                    </a>
                                                </h5>
                                                <h5 class="title">Mdp confirm:
                                                    <a>
                                                        <input type="password" name="newmdp2" placeholder="Confirmation du mot de passe" />
                                                    </a>
                                                </h5>
                                                <h5 class="title">Avatar :
                                                    <a>
                                                        <input class="btn btn-info btn-round btn-wd" type="file" name="avatar" />
                                                    </a>
                                                </h5>

                                                <div class="footer text-center">
                                                    <input class="btn btn-info btn-round btn-wd" type="submit" value="Mettre à jour mon profil !" href="index.php"/>
                                                    <div style="color: red;"><?php if(isset($msg)) { echo $msg; } ?></div>
                                                </div>
                                            </form>
                                        </div>


							                            <div id="2" style="display:none">
                                            <form class="form1" method="POST" action="">
                                                    <a href="admin.php?id=<?php echo $userinfo['id']?>"><input class="btn btn-info btn-round btn-wd" type="submit" value="Go admin Pannel !" /></a>                                                </div>
                                            </form>
                                          </div>
                                      </div>
                                  </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <script type="text/javascript">
                                function changementType()
                                {

                                    var type = document.getElementById("type").value;

                                    if (type == "0")
                                    {
                                        document.getElementById("0").style="display:block";
                                    }
                                    else
                                    {
                                        document.getElementById("0").style="display:none";
                                    }

                                    if (type == "1")
                                    {
                                        document.getElementById("1").style="display:block";
                                    }
                                    else
                                    {
                                        document.getElementById("1").style="display:none";
                                    }
                                    if (type == "2")
                                    {
                                        document.getElementById("2").style="display:block";
                                    }
                                    else
                                    {
                                        document.getElementById("2").style="display:none";
                                    }

                                }
                            </script>

                        <?php
                        }
                        else
                        {
                        ?>
                            <div class="col-md-4">
                                <br>
                                <div class="card card-user">
                                    <div class="image image-plain"></div>
                                    <div class="content text-center">
                                        <div class="author">
                                            <img class="avatar" src="img/minecraft_logo_round.jpg" alt="Logo Minecraft">
                                            <h4 class="title"><SELECT name="type" id="type" onchange="changementType();">
                                                    <OPTION value="0" selected="selected">Rcraft-Gamers</OPTION>
                                                </SELECT><br>
                                                <small>by Rcraft</small>
                                            </h4>
                                        </div>



                                        <tr>
                                            <div id="0" style="display:block">
                                                <h5 class="title">Version actuelle :
                                                    <a href="#">
                                                        1
                                                    </a>
                                                </h5>
                                                <h5 class="title">Prochaine Version :
                                                    <a href="#">
                                                        2
                                                    </a>
                                                </h5>
                                                <h5 class="title">type :
                                                    <a href="#">
                                                        gaming
                                                    </a>
                                                </h5>
                                            </div>





                                    </div>



                                    <script type="text/javascript">
                                        function changementType()
                                        {

                                            var type = document.getElementById("type").value;

                                            if (type == "0")
                                            {
                                                document.getElementById("0").style="display:block";
                                            }
                                            else
                                            {
                                                document.getElementById("0").style="display:none";
                                            }
                                        }
                                    </script>

                                </div>
                            </div>
                        <?php }  ?>



                    </div>
                </div>
            </div>

            <div id="articles-grid">
                <div class="container">
                    <h2 class="text-center"><?php echo $titre; ?></h2>


                    <img src="miniatures/<?= $id ?>.jpg" width="400" />
                    <h1><?= $titre ?></h1>
                    <p><?= $contenu ?></p>
                    <?php if (isset($_SESSION['id']) AND $userinfo['id'] == $_SESSION['id']) { ?>
                    <a href="action.php?t=1&id=<?= $id ?>">J'aime</a> (<?= $likes ?>)
                    <br />
                    <a href="action.php?t=2&id=<?= $id ?>">Je n'aime pas</a> (<?= $dislikes ?>)
                    <h2>Commentaires:</h2>
                    <form method="POST">
                       <input type="display" name="pseudo" placeholder="Votre pseudo" value="<?php echo $_SESSION['pseudo'];?>" /><br />
                       <textarea name="commentaire" placeholder="Votre commentaire..."></textarea><br />
                       <input type="submit" value="Poster mon commentaire" name="submit_commentaire" />
                    </form>
                    <div style="color: red;"><?php if(isset($c_msg)) { echo $c_msg; } ?></div>
                    <br /><br />
                    <?php while($c = $commentaires->fetch()) { ?>
                      <?php if ($_SESSION['id'] ==  1 ) { ?>
                         <b style="color: green" ><?= $c['pseudo'] ?>:</b> <?= $c['commentaire'] ?><br /><img src="../avatars/<?php echo $userinfo['avatar']?>" width="50" />
                         <?php }  else { ?>
                         <b style="color: blue" ><?= $c['pseudo'] ?>:</b> <?= $c['commentaire'] ?><br />
                       <?php } ?>
                    <?php } ?>
                    <?php } ?>
                    <?php } ?>
                    <?php if (isset($_SESSION['id']) AND $userinfo['id'] == $_SESSION['id']) { ?>
                    <a style="color: red" href="index.php?id=<?php echo $userinfo['id'] ?>" >Retour Acceuil</a>
                    <?php
                  }else {
                  ?>
                    <a style="color: red" href="index.php" >Retour Acceuil</a>
                  <?php
                  }
                     ?>
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
