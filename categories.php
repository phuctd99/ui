<!DOCTYPE html>
<html lang="en">

<?php
include("config.php");
$id = $_GET['cate'];
$sql_kind = "select * from category where id_category = '$id'";
$run_kind = mysqli_query($conn, $sql_kind);
$dong_kind = mysqli_fetch_array($run_kind);
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Phim <?php echo strtolower($dong_kind['category_name']) ?></title>
    <link rel="shortcut icon" type="image/png" href="images/favicon.png">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/responsive.css">
    <script src="./js/myjs.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
</head>

<body>
    <?php
    include("modules/backtotop.php");
    include("modules/header.php");
    ?>
    <div class="main_content">
        <div class="container">
            <?php
            include("modules/categories/list.php");
            ?>
        </div>
    </div>
    <?php
    include("modules/footer.php");
    ?>
</body>

</html>