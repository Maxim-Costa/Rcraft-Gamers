<?php
require_once __DIR__ . '/inc/boostrap.php';
    $getid = intval($_GET['id']);
    $requser = $bdd->prepare('SELECT * FROM mxm_membres WHERE id = ?');
    $requser->execute(array($getid));
    $userinfo = $requser->fetch();

if(isset($_GET['id']) AND !empty($_GET['id'])) {
   $suppr_id = htmlspecialchars($_GET['id']);
   $suppr = $bdd->prepare('DELETE FROM mxm_articles WHERE id = ?');
   $suppr->execute(array($suppr_id));
   header("Location: index.php?id=".$userinfo['id']);
}
?>
