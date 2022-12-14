<?php
session_start();
if(!isset($_SESSION['idUsuario'])){
    header("location:index.php");
}
if(isset($_GET['id'])){
    require_once __DIR__."/vendor/autoload.php";
    $pessoa = Pessoa::find($_GET['id']);
}
if(isset($_POST['botao'])){
    require_once __DIR__."/vendor/autoload.php";
    $pessoa = new Pessoa($_POST['nome'],$_POST['email'],$FILES);
    $pessoa->setId($_POST['id']);
    $pessoa->setIdUsuario($_SESSION['idUsuario']);
    $pessoa->save();
    header("location: restrita.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Edita Usuário</title>
</head>
<body>
<div class="container">
        <header>
            <img src="logo_feliz_ifrs.png">
        </header>
    <form action='formEditUsuario.php' method='POST'>
        <?php
            echo "Nome: <input name='nome' value='{$pessoa->getNome()}' type='text' required>";
        ?>
        <br>
        <?php
            echo "E-mail: <input name='email' value={$pessoa->getEmail()} type='email' required></br>";
            echo "Foto: <img width=150px src={$pessoa->getFoto()}>";
            echo "<input name='id' value={$pessoa->getId()} type='hidden'>";
        ?>
        <br>
        <input type='submit' name='botao'>
    </form>
    <a href='restrita.php'>Voltar</a> | 
    <a href='sair.php'>Sair</a>
</div>
</body>
</html>

