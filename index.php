<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cadastro de usuário</title>
</head>

<body>
<h1>Novo Usuário</h1>
<form action="cad.php" method="post" enctype="multipart/form-data" name="cadastro" >
Nome:<br />
<input type="text" name="nome" /><br /><br />
Email:<br />
<input type="text" name="email" /><br /><br />
Foto de exibição:<br />
<input type="file" name="foto" /><br /><br />
<input type="submit" name="cadastrar" value="Cadastrar" />
</form>
<br>
<a href="img.php"><strong> VER TODAS OS CADASTROS</strong></a>
</body>