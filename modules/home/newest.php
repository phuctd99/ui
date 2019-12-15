<?php
$sql_newest = "select * from movie order by id_movie desc limit 6";
$run_newest = mysqli_query($conn, $sql_newest);
?>
<div class="block">
    <div>
        <div class="block-title">Phim mới nhất</div>
        <div class="view-more"><a href="./category.html">Xem thêm <i class="fas fa-angle-right"></i></a></div>
    </div>
    <div class="block-content">
        <?php
        while ($dong_newest = mysqli_fetch_array($run_newest)) {
            ?>
            <a href="watch.php?movie=<?php echo $dong_newest['id_movie'] ?>&ep=1">
                <div class="block-element">
                    <p class="box-icon">Mới</p>
                    <img alt="" src="./images/films/<?php echo $dong_newest['movie_image'] ?>.webp" />
                    <p><?php echo $dong_newest['movie_name'] ?></p>
                </div>
            </a>
        <?php
        }
        ?>
    </div>
</div>