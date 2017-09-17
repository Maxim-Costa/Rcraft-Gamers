<?php
require_once __DIR__ . '/inc/boostrap.php';
$mxm_membres = $bdd->query('SELECT * FROM mxm_membres ORDER BY id');
//if ($userinfo['id'] == 1 ) {
?>
<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8" />
   <title>Administration</title>
   <link rel="icon" sizes="192x192" href="../icon/icon.ico">

</head>
<body>
   <ul>
     <?php
        while($userinfo = $mxm_membres->fetch()) {
      ?>
      <li>
      <?php $img = is_null($userinfo["avatar"]) ? 'img/null.png' : 'avatars/' . $userinfo['avatar'] ;?>
        <img style="width: 142px;" class="avatar" src="<?php echo $img; ?>" alt="Pas d'avatar"><br>&nbsp;<div><a style="font-size: 18px; color: red;">Pseudo :</a><?php echo $userinfo['pseudo'] ?></div><br /><div><a style="font-size: 18px; color: red;">Mail :</a ><?php echo $userinfo['mail']; ?></div><br /><div><a style="font-size: 18px; color: red;">Type :</a><?php echo $userinfo['type']; ?></div><br />
      </li>
      <?php
            }
      ?>

   </ul>
   <br /><br />
</body>
</html>
<?php
    //}else {
    //   header("Location: index.php?id=".$userinfo['id']);
    //}
?>
