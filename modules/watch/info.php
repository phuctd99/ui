<div class="filmInfo">
    <div class="filmImg" style="width: 15.16666666667%;">
        <img src="./images/films/<?php echo $dong_info['movie_image'] ?>.webp" width="100%">
    </div>
    <div class="filmDescribe">
        <p class="filmname"><?php echo $dong_info['movie_name'] ?></p>
        <ul class="extraButton">
            <li><button class="btn follow"><i class="fas fa-heart"></i> Yêu thích</button></li>
            <li><button class="btn facebook"><i class="fab fa-facebook-square"></i> Chia sẻ</button></li>
            <li><button class="btn report"><i class="fas fa-exclamation-triangle"></i> Báo cáo</button></li>
        </ul>
        <div class="clearfix"></div>
        <div class="describe">
            <p style="color: white; font-weight: 800; margin-bottom: 10px;">Nội dung</p>
            <p style="text-align: justify;"><?php echo $dong_info['movie_description'] ?></p>
        </div>
    </div>
    <div class="filmDetail">
        <table>
            <tr style="display: <?php if ($dong_info['episodes'] == 1) echo 'none' ?>">
                <th>Số tập</th>
                <td><?php echo $dong_info['episodes'] ?></td>
            </tr>
            <tr>
                <th>Thời lượng</th>
                <td><?php echo $dong_info['duration'] ?> phút</td>
            </tr>
            <tr>
                <th>Đạo diễn</th>
                <td><?php echo $dong_info['director'] ?></td>
            </tr>
            <tr>
                <th>Diễn viên</th>
                <td>Hứa Ngụy Châu, Kiều Hân, Châu Nghệ Hiên</td>
            </tr>
            <tr>
                <th>Quốc gia</th>
                <td><?php echo $dong_info['country'] ?></td>
            </tr>
            <tr>
                <th>Thể loại</th>
                <td><?php echo $dong_info['category_name'] ?></td>
            </tr>
            <tr>
                <th>Phát hành</th>
                <td><?php echo $dong_info['publish_date'] ?></td>
            </tr>
        </table>
    </div>
</div>