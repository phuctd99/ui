<?php
$sql_hotest = "select * from movie where id_movie % 4 = 0 order by id_movie desc limit 6";
$run_hotest = mysqli_query($conn, $sql_hotest);
?>
<div class="block">
    <div>
        <div class="block-title">Phim hot nhất</div>
        <div class="view-more"><a href="./category.html">Xem thêm <i class="fas fa-angle-right"></i></a></div>
    </div>
    <div class="block-content">
        <?php
        while ($dong_hotest = mysqli_fetch_array($run_hotest)) {
            ?>
            <a href="watch.php?movie=<?php echo $dong_hotest['id_movie'] ?>&ep=1">
                <div class="block-element">
                    <p class="box-icon">Hot</p>
                    <img alt="" src="./images/films/<?php echo $dong_hotest['movie_image'] ?>.webp" />
                    <p><?php echo $dong_hotest['movie_name'] ?></p>
                </div>
            </a>
        <?php
        }
        ?>
    </div>
</div>