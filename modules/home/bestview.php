<?php
$sql_view = "select * from movie where id_movie % 5 = 0 order by id_movie desc limit 6";
$run_view = mysqli_query($conn, $sql_view);
?>
<div class="block">
    <div>
        <div class="block-title">Xem nhiều nhất</div>
        <div class="view-more"><a href="./category.html">Xem thêm <i class="fas fa-angle-right"></i></a></div>
    </div>
    <div class="block-content">
        <?php
        while ($dong_view = mysqli_fetch_array($run_view)) {
            ?>
            <a href="watch.php?movie=<?php echo $dong_view['id_movie'] ?>&ep=1">
                <div class="block-element">
                    <p class="box-icon">Xem nhiều</p>
                    <img alt="" src="./images/films/<?php echo $dong_view['movie_image'] ?>.webp" />
                    <p><?php echo $dong_view['movie_name'] ?></p>
                </div>
            </a>
        <?php
        }
        ?>
    </div>
</div>