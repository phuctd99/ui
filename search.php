<!DOCTYPE html>
<html lang="en">

<?php
include("config.php");
$key = $_GET['key'];
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>
        <?php
        if ($key == "") {
            echo 'Tìm kiếm';
        } else {
            echo "Kết quả cho \"$key\"";
        }
        ?>
    </title>
    <link rel="shortcut icon" type="image/png" href="images/favicon.png">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/search.css">
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
    if (isset($_POST['sbtn'])) {
        $tmp = $_POST['name'];
        header("location:search.php?key=$tmp");
    }
    ?>
    <div class="main-search">
        <form action="" method="post">
            <div class="search-header">
                <input id="name" name="name" placeholder="Nhập tên phim cần tìm...">
            </div>
            <div class="search-btn">
                <button type="submit" id="sbtn" name="sbtn">Tìm kiếm</button>
            </div>
            <div class="empty" style="display: <?php if ($key != "") echo 'none' ?>"></div>
            <div class="container" style="display: <?php if ($key == "") echo 'none' ?>">
                <div class="result-header">
                    <div>
                        <h2>Kết quả</h2>
                    </div>
                    <div class="sort">
                        <label>Sắp xếp: </label>
                        <select id="choices">
                            <option>Mới nhất</option>
                            <option>Cũ nhất</option>
                            <option>a-z</option>
                            <option>z-a</option>
                        </select>
                    </div>
                </div>
                <?php
                include("modules/search/list.php");
                ?>
            </div>
        </form>
    </div>
    <?php
    include("modules/footer.php");
    ?>
</body>

</html>