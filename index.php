<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Xampp controller</title>
	<link rel="icon" sizes="192x192" href="icon/icon.ico">
</head>
<body>
<tr>
    <td>Web-Projets =</td>
    <td>
        <SELECT name="type" id="type" onchange="changementType();">
            <OPTION value="0" selected="selected">Choisie ton projet</OPTION>
            <OPTION value="1">killer-craft-master</OPTION>
            <OPTION value="2">Olivia Project</OPTION>
        </SELECT>
    </td>
</tr>

<div id="0" style="display:block">
    <table border="1">
        <div class="">
            <li>Reste encour</li>
            <tr>
                <td>-projet-1 (Mon projet)</td>
                <td>-projet-2 (Olivia)</td>
            <tr>
        </div>
    </table>
</div>


<div id="1" style="display:none">
    <table border="1">
        <div class="">
            <a style="text-decoration-line: none;" href="killer-craft-master"><input type="button" name="Mon projets pesrso "value="Mon projets pesrso"/></a>
            <li>Reste encour</li>
            <tr>
                <td>-js (preparation des image defilente)</td>
                <td>-js (preparation des systeme pour les block)</td>
            </tr>
        </div>
    </table>
</div>


<div id="2" style="display:none">
    <table border="1">
        <div class="">
            <a style="text-decoration-line: none;" href="Olivia"><input type="button" name="Mon projets pesrso "value="Mon projets pesrso"/></a>
            <li>Reste encour</li>
            <tr>
                <td>-html </td>
                <td>-css  </td>
                <td>-php  </td>
            </tr>
        </div>
    </table>
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
</body>
</html>
