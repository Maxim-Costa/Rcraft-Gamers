
<?php
require_once __DIR__ . '/inc/boostrap.php';
$articles = $bdd->query('SELECT * FROM mxm_articles');

if(isset($_POST['forminscription'])) {
    $pseudo = htmlspecialchars($_POST['pseudo']);
    $mail = htmlspecialchars($_POST['mail']);
    $mail2 = htmlspecialchars($_POST['mail2']);
    $mdp = sha1($_POST['mdp']);
    $mdp2 = sha1($_POST['mdp2']);
    if(!empty($_POST['pseudo']) AND !empty($_POST['mail']) AND !empty($_POST['mail2']) AND !empty($_POST['mdp']) AND !empty($_POST['mdp2'])) {
        $pseudolength = strlen($pseudo);
        if($pseudolength <= 255) {
            if($mail == $mail2) {
                if(filter_var($mail, FILTER_VALIDATE_EMAIL)) {
                    $reqmail = $bdd->prepare("SELECT * FROM mxm_membres WHERE mail = ?");
                    $reqmail->execute(array($mail));
                    $mailexist = $reqmail->rowCount();
                    if($mailexist == 0) {
                        if($mdp == $mdp2)
                        {
                            $query = $bdd->prepare('INSERT INTO mxm_membres (pseudo, mail, motdepasse) VALUES (?, ?, ?)');
                            $values = array($pseudo, $mail, $mdp);
                            $query->execute($values);
                            $erreur = "Votre compte a bien été créé !";
                        } else {
                            $erreur = "Vos mots de passes ne correspondent pas !";
                        }
                    } else {
                        $erreur = "Adresse mail déjà utilisée !";
                    }
                } else {
                    $erreur = "Votre adresse mail n'est pas valide !";
                }
            } else {
                $erreur = "Vos adresses mail ne correspondent pas !";
            }
        } else {
            $erreur = "Votre pseudo ne doit pas dépasser 255 caractères !";
        }
    } else {
        $erreur = "Tous les champs doivent être complétés !";
    }
}

if(isset($_POST['formconnexion'])) {
    $mailconnect = htmlspecialchars($_POST['mailconnect']);
    $mdpconnect = sha1($_POST['mdpconnect']);
    if(!empty($mailconnect) AND !empty($mdpconnect)) {
        $requser = $bdd->prepare("SELECT * FROM mxm_membres WHERE mail = ? AND motdepasse = ?");
        $requser->execute(array($mailconnect, $mdpconnect));
        $userexist = $requser->rowCount();
        if($userexist == 1) {
            $userinfo = $requser->fetch();
            $_SESSION['id'] = $userinfo['id'];
            $_SESSION['pseudo'] = $userinfo['pseudo'];
            $_SESSION['mail'] = $userinfo['mail'];
            header("Location: index.php?id=".$_SESSION['id']);
        } else {
            $erreur = "Mauvais mail ou mot de passe !";
        }
    } else {
        $erreur = "Tous les champs doivent être complétés !";
    }
}

if(isset($_SESSION['id'])) {
    $requser = $bdd->prepare("SELECT * FROM mxm_membres WHERE id = ?");
    $requser->execute(array($_SESSION['id']));
    $user = $requser->fetch();
    if(isset($_POST['newpseudo']) AND !empty($_POST['newpseudo']) AND $_POST['newpseudo'] != $user['pseudo']) {
        $newpseudo = htmlspecialchars($_POST['newpseudo']);
        $insertpseudo = $bdd->prepare("UPDATE mxm_membres SET pseudo = ? WHERE id = ?");
        $insertpseudo->execute(array($newpseudo, $_SESSION['id']));
        header('Location: profil.php?id='.$_SESSION['id']);
    }
    if(isset($_POST['newmail']) AND !empty($_POST['newmail']) AND $_POST['newmail'] != $user['mail']) {
        $newmail = htmlspecialchars($_POST['newmail']);
        $insertmail = $bdd->prepare("UPDATE mxm_membres SET mail = ? WHERE id = ?");
        $insertmail->execute(array($newmail, $_SESSION['id']));
        header("Location: index.php?id=".$_SESSION['id']);
    }
    if(isset($_POST['newmdp1']) AND !empty($_POST['newmdp1']) AND isset($_POST['newmdp2']) AND !empty($_POST['newmdp2'])) {
        $mdp1 = sha1($_POST['newmdp1']);
        $mdp2 = sha1($_POST['newmdp2']);
        if($mdp1 == $mdp2) {
            $insertmdp = $bdd->prepare("UPDATE mxm_membres SET motdepasse = ? WHERE id = ?");
            $insertmdp->execute(array($mdp1, $_SESSION['id']));
            header("Location: index.php?id=".$_SESSION['id']);
        } else {
            $msg = "Vos deux mdp ne correspondent pas !";
        }
    }
}
    if(isset($_FILES['avatar']) AND !empty($_FILES['avatar']['name'])) {

       $tailleMax = 2097152;
       $extensionsValides = array('jpg', 'jpeg', 'gif', 'png');
       if($_FILES['avatar']['size'] <= $tailleMax) {
          $extensionUpload = strtolower(substr(strrchr($_FILES['avatar']['name'], '.'), 1));
          if(in_array($extensionUpload, $extensionsValides)) {
             $chemin = "avatars/".$_SESSION['id'].".".$extensionUpload;
             $resultat = move_uploaded_file($_FILES['avatar']['tmp_name'], $chemin);
             if($resultat) {
                $updateavatar = $bdd->prepare('UPDATE membres SET avatar = :avatar WHERE id = :id');
                $updateavatar->execute(array(
                   'avatar' => $_SESSION['id'].".".$extensionUpload,
                   'id' => $_SESSION['id']
                   ));
                header('Location: index.php?id='.$_SESSION['id']);
             } else {
                $msg = "Erreur durant l'importation de votre photo de profil";
             }
          } else {
             $msg = "Votre photo de profil doit être au format jpg, jpeg, gif ou png";
          }
       } else {
          $msg = "Votre photo de profil ne doit pas dépasser 2Mo";
       }
    }

    if(isset($_GET['id']) AND $_GET['id'] > 0)
    {
        $getid = intval($_GET['id']);
        $requser = $bdd->prepare('SELECT * FROM mxm_membres WHERE id = ?');
        $requser->execute(array($getid));
        $userinfo = $requser->fetch();
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
                        <a class="navbar-brand" href="
                        <?php
                        if (isset($_SESSION['id']) AND $userinfo['id'] == $_SESSION['id']) {
                        ?>
                        index.php?id=<?php echo $userinfo['id'] ?>
                        <?php
                         }else{
                        ?>
                        index.php
                        <?php
                        }
                        ?>">

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
                <h1 >Rcraft-Gamers.tk</h1>
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
                            <p>Vous pouvez nous rejoindre pour discuter ensemble ou nous poser des questions sur <a href="https://discord.gg/wBY4na" target="_blank">Discord</a>.</p>
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
                                                        Forum 1 Go !
                                                    </a>
                                                    <a href="forum_1/" >
                                                        Forum 2 Go !
                                                    </a>
                                                </h5>
                                                <div class="footer text-center">
                                                    <a href="deconnexion.php" target="_blank" class="btn btn-info btn-round btn-wd"> Deconnexion</a>
                                                </div>
                                            </form>
                                        </div>





                                        <div id="1" style="display:none">
                                            <form class="form1" method="POST" action="" enctype="multipart/form-data">
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
                                                    <OPTION value="1">Connexion</OPTION>
                                                    <OPTION value="2">Inscription</OPTION>
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


                                            <div id="1" style="display:none">
                                                <form class="form1" method="POST" action="">
                                                    <input required="" class="form_text" type="email" name="mailconnect" placeholder="Mail" /><br /><br />
                                                    <input required="" class="form_password" type="password" name="mdpconnect" placeholder="Mot de passe" />
                                                    <br /><br />
                                                    <input class="btn btn-info btn-round btn-wd" type="submit" class="form_bouton" name="formconnexion" value="Se connecter !" />
                                                    <br /><br />
                                                    <?php
                                                    if(isset($erreur)) {
                                                        echo '<font color="red">'.$erreur."</font>";
                                                    }
                                                    ?>
                                                </form>
                                            </div>


                                            <div id="2" style="display:none">
                                                <form class="form1" method="POST" action="">
                                                    <table>
                                                        <tbody>
                                                        <tr>
                                                            <td align="right">
                                                                <label class="text" for="pseudo">Pseudo :</label>
                                                            </td>
                                                            <td>
                                                                <input required="" class="form_pseudo" placeholder="Votre pseudo" id="pseudo" name="pseudo" value="" type="text">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                                <label class="text" for="mail">Mail :</label>
                                                            </td>
                                                            <td>
                                                                <input required="" class="form_text" placeholder="Votre mail" id="mail" name="mail" value="" type="email">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                                <label class="text" for="mail2">Confirmation du mail :</label>
                                                            </td>
                                                            <td>
                                                                <input required="" class="form_text" placeholder="Confirmez votre mail" id="mail2" name="mail2" value="" type="email">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                                <label class="text" for="mdp">Mot de passe :</label>
                                                            </td>
                                                            <td>
                                                                <input required="" class="form_password" placeholder="Votre mot de passe" id="mdp" name="mdp" type="password">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                                <label class="text" for="mdp2">Confirmation du Mdp :</label>
                                                            </td>
                                                            <td>
                                                                <input required="" class="form_password" placeholder="Confirmez votre mdp" id="mdp2" name="mdp2" type="password">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td align="center">
                                                                <br>
                                                                <input class="btn btn-info btn-round btn-wd" class="form_bouton" name="forminscription" value="Je m'inscris" type="submit">
                                                                <?php
                                                                if(isset($erreur)) {
                                                                    echo '<font color="red">'.$erreur."</font>";
                                                                }
                                                                ?>
                                                            </td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </form>
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

                                </div>
                            </div>
                        <?php }  ?>



                    </div>
                </div>
            </div>

            <div id="articles-grid">
                <div class="container">
                    <h2 class="text-center">Nos derniers Articles</h2>
                    <div class="row">
                        <div id="portfoliolist">
                          <?php while($a = $articles->fetch()) { ?>
                            <div class="portfolio shader col-xs-12 col-sm-6 col-md-4" data-cat="shader" data-date="2017-03-30 00:00:00" data-views="55257" data-downloads="35814" style="display: inline-block;" data-bound="">
                                <a href="article.php?id=<?= $a['id'] ?>">
                                    <div class="card card-background" style="background:url('miniatures/<?php echo $a['id'] ?>.jpg') center center / cover">
                                        <div class="image" style="background-image: url(&quot;miniatures/<?php echo $a['id'] ?>.jpg&quot;); background-position: center center; background-size: cover;">
                                            <div class="filter">
                                            <span class="btn btn-neutral btn-simple">
                                            <i></i> Lire l'article
                                            </span>
                                            </div>
                                            <img src="miniatures/<?php echo $a['id'] ?>.jpg" alt="Shader Sonic Ether's Unbelievable Shaders - Rcraft-Gamers.tk" style="display: none;">
                                        </div>
                                        <div class="content">
                                            <h5 class="price">
                                                <i></i> <?php echo $a['titre'] ?>
                                                <i></i>
                                            </h5>
                                            <h10 class="title"><?php echo $a['class'] ?></h10>
                                        </div>
                                        <div class="footer">
                                            <div class="stats pull-right">
                                                <i>  </i> <?php echo $a['date_time_publication'] ?> </div>
                                                <?php  if (isset($_SESSION['id']) AND $userinfo['id'] == $_SESSION['id']) { ?>
                                                <?php if ($_SESSION['id'] == $a['id_auteur']) {?>
                                                <a href="redaction.php?edit=<?= $a['id'] ?>">Modifier</a> | <a href="supprimer.php?id=<?= $a['id'] ?>">Supprimer</a>
                                                <?php } ?>
                                              <?php } ?>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <?php } ?>
                    </div>
                        <?php if (isset($_SESSION['id']) AND $userinfo['id'] == $_SESSION['id']) { ?>
                      <a style="color: blue; font-size: 19px;" href="redaction.php?id=<?php echo $userinfo['id'] ?>" >Ecrire un article</a>
                        <?php
                            }else {
                              ?>
                              <a id="" style="color: blue; font-size: 19px;" href="#formconnexion" >Connecter vous pour rediger un article </a>

                              </article></a>
                              <?php } ?>
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
