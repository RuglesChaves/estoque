<?php
// Conexão com o banco de dados
$conn = @mysql_connect("localhost", "root", "") or die ("Problemas na conexão.");
$db = @mysql_select_db("banco", $conn) or die ("Problemas na conexão na tabela ");


// Se o usuário clicou no botão cadastrar efetua as ações
if ($_POST['cadastrar']) {
	
	// Recupera os dados dos campos
	$nome = $_POST['nome'];
	$email = $_POST['email'];
	$foto = $_FILES["foto"];
	
	// Se a foto estiver sido selecionada
	if (!empty($foto["name"])) {
		
		// Largura máxima em pixels
		$largura = 150;
		// Altura máxima em pixels
		$altura = 180;
		// Tamanho máximo do arquivo em bytes
		$tamanho = 1000;

		// Pega as dimensões da imagem
		$dimensoes = getimagesize($foto["tmp_name"]);
	
		
		// Se não houver nenhum erro
		
		
			// Pega extensão da imagem
			preg_match("/\.(gif|bmp|png|jpg|jpeg){1}$/i", $foto["name"], $ext);

        	// Gera um nome único para a imagem
        	$nome_imagem = $nome;

        	// Caminho de onde ficará a imagem
        	$caminho_imagem = "fotos/" . $nome_imagem;

			// Faz o upload da imagem para seu respectivo caminho
			move_uploaded_file($foto["tmp_name"], $caminho_imagem);
		
			// Insere os dados no banco
			$sql = mysql_query("INSERT INTO usuarios VALUES ('', '".$nome."', '".$email."', '".$nome_imagem."')");
		
			// Se os dados forem inseridos com sucesso
			if ($sql){
				echo "Você foi cadastrado com sucesso.";
			}
		
	
		// Se houver mensagens de erro, exibe-as
		if (!$sql){
				echo "Você foi cadastrado com sucesso.";
			}
		
	}
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cadastro de usuário</title>
</head>

<body>
<h1>Novo Usuário</h1>
<form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="post" enctype="multipart/form-data" name="cadastro" >
Nome:<br />
<input type="text" name="nome" /><br /><br />
Email:<br />
<input type="text" name="email" /><br /><br />
Foto de exibição:<br />
<input type="file" name="foto" /><br /><br />
<input type="submit" name="cadastrar" value="Cadastrar" />
</form>

<hr />

<h1>Usuários cadastrados</h1>
<?php
// Seleciona todos os usuários
$sql = mysql_query("SELECT * FROM usuarios ORDER BY nome");

// Exibe as informações de cada usuário
while ($usuario = mysql_fetch_object($sql)) {
	// Exibimos a foto
	echo "<img src='fotos/".$usuario->foto."' alt='Foto de exibição' /><br />";
	// Exibimos o nome e email
	echo "<b>Nome:</b> " . $usuario->nome . "<br />";
	echo "<b>Email:</b> " . $usuario->email . "<br /><br />";
}


?>
</body>
</html>