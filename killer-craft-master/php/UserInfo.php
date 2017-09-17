<?php
if(isset($_GET['id']) AND $_GET['id'] > 0)
{
    $getid = intval($_GET['id']);
    $requser = $bdd->prepare('SELECT * FROM mxm_membres WHERE id = ?');
    $requser->execute(array($getid));
    $userinfo = $requser->fetch();
}
 ?>
