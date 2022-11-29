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
    <link href="style.css" rel="stylesheet">
    <title>Login de usuário</title>
</head>
<body>
    <div class="logo_ifrs">
        <img src="logo_feliz_ifrs.png">
    </div>
    <br>
<div class="login">
<fieldset>
    <?php
    echo "<h1>Login</h1>";
    ?>
    <br>
    <form action='index.php' method='post'>
        <label for='email'>E-mail institucional:</label>
        <input type='email' name='email' id='email' required>
        <br>
        <label for='senha'>Senha:</label>
        <input type='password' name='senha' id='senha' required>
        <input type='submit' class='botao' name='botao' value='Acessar'>
    </form>
    <br>
    <hr>
    <br>
    <?php
    echo "<h3>Primeira vez acessando o site?</h3>";
    echo "<h4>Faça o seu cadastro para poder ter acesso ao site.</h4>";
    ?>
    <br>
    <a href='formCadUsuario.php'>Cadastrar usuario</a>
    <br>
    <hr>
</fieldset>
</div>
                <?php
                echo "<h1>Ao errar a senha (usuario) mostrar mensagem de erro na tela</h1>";
                echo "<h1>e mover a imagem do ifrs para o canto superior esquerdo (??diminuir de tamanho da img??)</h1>";
                ?>
</body>
</html>