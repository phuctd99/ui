<?php
$sql = "select * from category order by category_name asc";
$run = mysqli_query($conn, $sql);
?>
<header>
    <div class="logo"><img alt="" src="./images/LOGO2.png" /></div>
    <div class="menu_bar">
        <i class="fas fa-bars" id="menu"></i>
    </div>
    <div class="navigation">
        <ul>
            <li><a href="index.php">Trang chủ</a></li>
            <li><a href="./category.html">Mới nhất</a></li>
            <li><a href="./category.html">Xem nhiều</a></li>
            <?php
            while ($dong = mysqli_fetch_array($run)) {
                ?>
                <li class="hid"><a href="categories.php?cate=<?php echo $dong['id_category'] ?>"><?php echo $dong['category_name'] ?></a></li>
            <?php
            }
            ?>
        </ul>
    </div>
    <div class="user-action">
        <ul>
            <li><a href="search.php?key="><i class="fas fa-search"></i></a></li>
            <li>
                <?php 
                if(isset($_SESSION['username'])){
                    echo "
                    <div class='w3-dropdown-click'>
                    <button onclick='dropDown()' style='background:black;border:none;color:white'>".$_SESSION['username']."</button>
                    <div id='Demo' class='w3-dropdown-content w3-bar-block w3-border'>
                        <a href='logout.php' class='w3-bar-item w3-button'>Đăng xuất</a>
                    </div>
                    </div>
                    ";
                }else{
                    echo "Đăng nhập";
                }
                ?>
            
            </li>
            <li></li>
        </ul>
    </div>

    <script>
        var menu = document.querySelector('#menu');
        var main = document.querySelector('body');
        var drawer = document.querySelector('.navigation');
        var input = document.querySelector('.menu_input_form');
        menu.addEventListener('click', function(e) {
            drawer.classList.toggle('open');
            e.stopPropagation();
        });
        main.addEventListener('click', function() {
            drawer.classList.remove('open');

        });
    </script>
</header>