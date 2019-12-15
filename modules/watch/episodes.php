<div class="playerFooter" style="display: <?php if ($dong_info['episodes'] == 1) echo "none;" ?>">
    <h2 style="color: white;">Tập phim</h2>
    <ul class="episodes">
        <?php
        for ($i = 1; $i <= $dong_info['episodes']; $i++) {
            ?>
            <li>
                <a href="watch.php?<?php echo "movie=$id&ep=$i" ?>">
                    <button class="btn <?php if ($ep == $i) echo 'active' ?>">Tập <?php echo $i ?></button>
                </a>
            </li>
        <?php
        }
        ?>
    </ul>
</div>
<div class="clearfix"></div>