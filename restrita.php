<?php
session_start();
if(!isset($_SESSION['idUsuario'])){
    header("location:index.php");
}
require_once __DIR__."/vendor/autoload.php";

$contatos = Pessoa::findallByUsuario($_SESSION['idUsuario']);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Página de Contatos</title>
</head>
<body>
<div class="container">
        <header>
            <img src="logo_ifrs.png">
        </header>
<nav>
            <ul>
                <li><a href="restrita.php">Inicio</a></li>
                <li><a href='sair.php'>Sair</a></li>
            </ul>
        </nav>
        <main>
        <h1>AQUI VAI TODOS OS LIVROS</h1>
    <table>
    <tr>
        <td>Nome</td>
        <td>E-mail</td>
        <td>Foto</td>
        <td>Opções</td>
    </tr>
    <?php
    foreach($contatos as $contato){
        echo "<tr>";
        echo "<td>{$contato->getNome()}</td>";
        echo "<td>{$contato->getEmail()}</td>";
        echo "<td><img width=150px src=".$contato->getFoto()."></td>";
        echo "<td>
                <a href='formEditPessoa.php?id={$contato->getId()}'>Editar</a>
                <a href='excluirPessoa.php?id={$contato->getId()}'>Excluir</a> 
             </td>";
        echo "</tr>";
    }
    ?>
</table>
        </main>
        <footer>
            <h3>Programação 3 - 2022</h3>
        </footer>
</div>
</body>
</html>






