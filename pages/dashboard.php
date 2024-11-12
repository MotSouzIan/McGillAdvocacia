<!DOCTYPE html>
<html lang="pt-br">



<?php 
include("head.php");
 ?>

<body class="g-sidenav-show  bg-gray-100">

  <?php include("menu.php"); ?>

  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
    <!-- Navbar -->

    <?php include("../template/scripts/cards.php"); ?>

    <?php if (isset($_GET["r"])) {
      switch ($_GET["r"]) {
        case "clientes":
          include("scripts/clientes.php");
          break;
        case "funcionarios":
          include("scripts/funcionarios.php");
          break;
        case "processos":
          include("processos.php");
          break;
        case "tarefas":
          include("scripts/tarefas.php");
          break;
        case "perfil":
          include("perfil.php");
          break;
        
        default:
          break;

      }
    } else {
      include("principal.php");
    }
  ?>
</body>

</html>