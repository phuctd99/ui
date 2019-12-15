<?php
session_start();
include('config.php');
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $query = "select id_user,username,password,dialnumber from user where password='$password' and username='$username' ";
    $result = mysqli_query($conn, $query);
    if (mysqli_num_rows($result) == 1) {
        list($id, $username, $password, $dialnumber) = mysqli_fetch_array($result, MYSQLI_NUM);
        $_SESSION['id'] = $id;
        $_SESSION['username'] = $username;
        $_SESSION['phone'] = $dialnumber;
        header('location:index.php');
    } else {
        echo "<script type=\"text/javascript\">alert('Tên người dùng hoặc mật khẩu không đúng');</script>";
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="css/w3.css">
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
    <div id="main-content">
        <div class="container">
            <form action="" class="form-area" method="post">
                <div class="login">
                    <div class="login-title">
                        <h2>Đăng nhập</h2>
                    </div>
                    <div class="inner">
                        <div class="form-group">
                            <input type="text" value="" placeholder="Tên người dùng" class="form-control" name="username">
                        </div>
                        <div class="form-group">
                            <input type="password" value="" placeholder="Mật khẩu" class="form-control" name="password">
                        </div>
                        <button type="submit" class="btn btn-login" name="Login">Đăng nhập</button>
                        <div class="text-area">
                            <p>Hoặc</p>
                        </div>
                        <div class="bt-group">
                            <button class="btn btn-facebook">Facebook</button>
                            <button class="btn btn-google">Google</button>
                        </div>
                        <div class="text-area">Chưa có tài khoản? <a href="signup.php">Đăng ký ngay.</a>
                        </div>
                    </div>
                </div>
        </div>
        </form>
    </div>
    <?php
    include("modules/footer.php");
    ?>
</body>

</html>