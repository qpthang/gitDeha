<!-- san pham noi bat -->
    <div class="box-container">
    	<div class="box-home box-product">
    		<div class="header">
                <div class="promote">
                    <a href="#"><span>Sản phẩm mới</span></a>
                </div>
            </div>
            <div class="content">
            	<ul>
                <?php 
                    foreach($arr as $rows)
                    {
                 ?>
                	<!-- product -->
                	<li>
                    	<div class="image">
                        	<a href="index.php?controller=product_detail&id=<?php echo $rows->product_id; ?>" class="jt" title="<?php echo $rows->p_name; ?>" style="background:url(public/upload/product/<?php echo $rows->p_img; ?>) no-repeat 50% 50% ">
                            </a>
                        </div>
                        <div class="info">
                        	<p><a href="index.php?controller=product_detail&id=<?php echo $rows->product_id; ?>" class="jt" ><?php echo $rows->p_name; ?></a></p>
    						<p><strong>Giá:</strong> <strong class="price"><?php echo number_format($rows->p_price); ?>VNĐ</strong> <a href="index.php?controller=cart&act=add&id=<?php echo $rows->product_id; ?>"><img src="public/images/icon-cart.jpg" style="width:10px;" /> Cart</a></p>
                        </div>
                    </li>
                    <!-- end product -->
                    <?php } ?>
                </ul>
            </div>
        </div>
    </div>
    <!-- end san pham noi bat-->