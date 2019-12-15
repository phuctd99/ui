<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng ký</title>
    <link rel="shortcut icon" type="image/png" href="images/favicon.png">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/responsive.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
</head>
<?php
include('config.php');
if (isset($_POST['Register'])) {
    $username = $_POST['username'];
    $phone = $_POST['phone'];
    $password = $_POST['password'];
    $repassword = $_POST['repassword'];
    if (strlen($password) <= 6) {
        echo "<script type=\"text/javascript\">alert('Mật khẩu phải nhiều hơn 6 kí tự');</script>";
    } else {
        if ($password != $repassword) {
            echo "<script type=\"text/javascript\">alert('Mật khẩu không trùng khớp');</script>";
        } else {
            $getUser = "select * from users where user_name='$username'";
            $query = mysqli_query($conn, $getUser);
            $num = mysqli_num_rows($query);
            if ($num > 0) {
                echo "<script type=\"text/javascript\">alert('Tài khoản này đã tồn tại, vui lòng chọn email khác');</script>";
            } else {
                $insertUser = "insert into user(username,password,dialnumber)
                     values('$username','$password','$phone')";
                $query2 = mysqli_query($conn, $insertUser);
                header('location:login.php');
            }
        }
    }
}
?>

<body>
    <?php
    include("modules/backtotop.php");
    include("modules/header.php");
    ?>
    <div id="main-content">
        <div class="container">
            <form action="#" class="form-area" method="post">
                <div class="login">
                    <div class="login-title">
                        <h3>Đăng ký</h3>
                    </div>
                    <div class="inner">
                        <div class="form-group">
                            <input type="text" value="" placeholder="Tên người dùng" class="form-control" name="username">
                        </div>
                        <div class="form-group">
                            <input type="text" value="" placeholder="Điện thoại" class="form-control" name="phone">
                        </div>
                        <div class="form-group">
                            <input type="password" value="" placeholder="Mật khẩu" class="form-control" name="password">
                        </div>
                        <div class="form-group">
                            <input type="password" value="" placeholder="Nhập lại mật khẩu" class="form-control" name="repassword">
                        </div>
                        <button type="submit" class="btn btn-login" name="Register">Đăng kí</button>
                        <div class="text-area">
                            <p>Hoặc</p>
                        </div>
                        <div class="bt-group">
                            <button class="btn btn-facebook">Facebook</button>
                            <button class="btn btn-google">Google</button>
                        </div>
                        <div class="text-area">
                            Đã có tài khoản? <a href="login.php">Đăng nhập ngay.</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <?php
    include("modules/footer.php");
    ?>
</body>

</html>