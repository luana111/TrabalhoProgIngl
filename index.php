<?php
if(isset($_POST['botao'])){
    require_once __DIR__."/vendor/autoload.php";
    $u = new Usuario($_POST['email'],$_POST['senha']);
    if($u->authenticate()){
        header("location: restrita.php");
    }else{
        header("location: index.php");
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login de usuário</title>
</head>
<body>
<div class="login">
    <div class="logo_ifrs">
        <img src="logo_ifrs.png">
    </div>
    
    <form action='index.php' method='post'>
        <label for='email'>E-mail institucional:</label>
        <input type='email' name='email' id='email' required>
        <label for='senha'>Senha:</label>
        <input type='password' name='senha' id=senha' required>
        <input type='submit' name='botao' value='Acessar'>
    </form>
    <a href='formCadUsuario.php'>Cadastrar usuario</a>
</div>
</body>
</html>