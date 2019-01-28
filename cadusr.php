<?php
//verifica se existe conexão com bd, caso não tenta criar uma nova
    $conexao = mysql_connect("localhost","root","") //porta, usuário, senha
    or die("Erro na conexão com banco de dados"); //caso não consiga conectar mostra a mensagem de erro mostrada na conexão
     
    $select_db = mysql_select_db("novo"); //seleciona o banco de dados
     
    //Abaixo atribuímos os valores provenientes do formulário pelo método POST
    $nome = $_POST["nome"]; 
    $usuario = $_POST["usuario"]; 
    $senha = $_POST["senha"];
    
     

if ($nome == "") {
    print "<script> alert('Preencha o nome.'); window.history.go(-1); </SCRIPT>\n";
   
}elseif  ($usuario == "") {
   print "<script> alert('Preencha a Quantidade.'); window.history.go(-1); </SCRIPT>\n"; 

}elseif  ($senha == "") {
   print "<script> alert('Preencha a Quantidade.'); window.history.go(-1); </SCRIPT>\n";    

}else{


           
            

    $string_sql = "INSERT INTO usuarios (id,nome,usuario,senha) VALUES (null,'$nome','$usuario','$senha')"; //String com consulta SQL da inserção
     
    mysql_query($string_sql,$conexao); //Realiza a consulta
     
    if(mysql_affected_rows() == 1){ //verifica se foi afetada alguma linha, nesse caso inserida alguma linha
        //echo "<p>Cadastro feito com sucesso</p>";
        print "<script> alert('Cadastro feito com sucesso.'); javascript:window.location='tsm/login.html'; </SCRIPT>\n";
      //  echo '<script>location.href="../index.php";</script>';
        //echo '<a href="../index.php">Voltar para formulário de cadastro</a>'; //Apenas um link para retornar para o formulário de cadastro
    } else {
        //echo "Erro, não possível inserir no banco de dados";
        print "<script> alert('Erro, não possível inserir no banco de dados.'); window.history.go(-1); </SCRIPT>\n";
    }
     
    mysql_close($conexao); //fecha conexão com banco de dados 
}

?>