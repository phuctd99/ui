<?php
$sql_search = "select * from movie where movie_name like '%$key%'";
$run_search = mysqli_query($conn, $sql_search);
?>
<div class="block">
    <div class="block-content">
        <?php
        while ($dong_search = mysqli_fetch_array($run_search)) {
            ?>
            <a href="watch.php?movie=<?php echo $dong_search['id_movie'] ?>&ep=1">
                <div class="block-element">
                    <img alt="" src="./images/films/<?php echo $dong_search['movie_image'] ?>.webp" />
                    <p><?php echo $dong_search['movie_name'] ?></p>
                </div>
            </a>
        <?php
        }
        ?>
    </div>
</div>