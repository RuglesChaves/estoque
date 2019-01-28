<!DOCTYPE html>
<html>
<head>
	<title>MAX TESTE</title>
</head>
<body>
<label>NOME</label><br>
<form action="max.php" method="post">
<input type="text" name="nome"><br>
<label>IDADE</label><br>
<input type="text" name="idade"><br>
<input type="submit" value="ENVIAR">
</form>
<?php  
$conn = @mysql_connect("localhost", "root", "") or die ("Problemas na conexão.");
$db = @mysql_select_db("max", $conn) or die ("Problemas na conexão na tabela ");
	// Seleciona todos os usuários
$sql = mysql_query("Select * From dados");
while($exibe = mysql_fetch_assoc($sql)){
?>
    <table>
    <td class="center"><?php echo $exibe["nome"]; ?></td>
    <td class="center"><?php echo $exibe["idade"]; ?></td>     	
    </table>
                              
 <?php 
    }                          
 ?> 
                                        
                                        

</body>
</html>