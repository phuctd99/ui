<?php
$sql = "select * from movie where id_category = '$id' order by id_movie desc limit 12";
$run = mysqli_query($conn, $sql);
?>
<div class="block">
    <div class="block-title">Phim <?php echo strtolower($dong_kind['category_name']) ?></div>
    <div class="block-content">
        <?php
        while ($dong = mysqli_fetch_array($run)) {
            ?>
            <a href="watch.php?movie=<?php echo $dong['id_movie'] ?>&ep=1">
                <div class="block-element">
                    <img alt="" src="./images/films/<?php echo $dong['movie_image'] ?>.webp" />
                    <p><?php echo $dong['movie_name'] ?> </p>
                </div>
            </a>
        <?php
        }
        ?>
    </div>
</div>
<div class="pagination">
    <a href="#">&laquo;</a>
    <a class="active" href="#">1</a>
    <a href="#">2</a>
    <a href="#">3</a>
    <a href="#">4</a>
    <a href="#">5</a>
    <a href="#">6</a>
    <a href="#">7</a>
    <a href="#">&raquo;</a>
</div>