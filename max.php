
<?php

$conn = @mysql_connect("localhost", "root", "") or die ("Problemas na conexão.");
$db = @mysql_select_db("max", $conn) or die ("Problemas na conexão na tabela ");

$nome=$_POST['nome'];
$idade=$_POST['idade'];

//echo $nome;
//echo $idade;

$sql = mysql_query("INSERT INTO dados VALUES ('', '".$nome."', '".$idade."')");

if (!$sql) {
	echo "Não e possivel cadastrar";
	exit();
}
if ($sql) {
	echo "cadastro com sucesso!";
	exit();
}


	// Seleciona todos os usuários
$sql = mysql_query("SELECT * FROM dados ORDER BY nome");

// Exibe as informações de cada usuário
while ($usuario = mysql_fetch_object($sql)) {
	
	// Exibimos o nome e email
	echo "<b>Nome:</b> " . $usuario->nome . "<br />";
	echo "<b>Email:</b> " . $usuario->idade . "<br /><br />";
}
?>
