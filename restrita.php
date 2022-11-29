<?php
session_start();
if(!isset($_SESSION['idUsuario'])){
    header("location:index.php");
}
require_once __DIR__."/vendor/autoload.php";

$usuaria = Usuario::find($_SESSION['idUsuario']);
if($usuaria->getadmin()==1){
?>

<?php
}else{
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Página de Livros</title>
</head>
<body>
<div class="logo_ifrs">
        <img src="logo_feliz_ifrs.png">
    </div>
    <br>
    <div class="aaa">
        <h1>LIVROS</h1>

    <table>
    <tr>
        <td>Título</td>
        <td>Autor</td>
        <td>Genero</td>
        <td>Ano</td>
    </tr>
    <?php
    foreach($livros as $livro){
        echo "<tr>";
        echo "<td>{$livro->getTitulo()}</td>";
        echo "<td>{$livro->getAutor()}</td>";
        echo "<td>{$livro->getGenero()}</td>";
        echo "<td>{$livro->getAno()}</td>";
        echo "</tr>";
    }
    ?>
</table>
<?php
}
?>
<!--<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Página de Contatos</title>
</head>
<body>
<div class="logo_ifrs">
        <img src="logo_feliz_ifrs.png">
    </div>
    <br>
    <div class="adm">
        <h1>AQUI VAI TODOS OS LIVROS - Administrador</h1>

    <table>
    <tr>
        <td>Nome</td>
        <td>E-mail</td>
        <td>Foto</td>
        <td>Opções</td>
    </tr>
    <?php
    /*
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
    }*/
    ?>
</table>-->
        </main>
        <footer id='page-footer'>
            <h3>Programação 3 - 2022</h3>
        </footer>
</div>
</body>
</html>






