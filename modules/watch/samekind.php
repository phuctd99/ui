<?php
$kind = $dong_info['id_category'];
$sql_same = "select * from movie where id_category = $kind and id_movie != $id order by id_movie desc limit 6";
$run_same = mysqli_query($conn, $sql_same);
?>
<div class="sameKind">
    <h2>Phim liên quan</h2>
    <ul class="list">
        <?php
        while ($dong_same = mysqli_fetch_array($run_same)) {
            ?>
            <li>
                <a href="watch.php?movie=<?php echo $dong_same['id_movie'] ?>&ep=1">
                    <img src="./images/films/<?php echo $dong_same['movie_image'] ?>.webp" alt="" width="100%" height="auto">
                    <p><?php echo $dong_same['movie_name'] ?></p>
                </a>
            </li>
        <?php
        }
        ?>
    </ul>
</div>
<div class="clearfix"></div>