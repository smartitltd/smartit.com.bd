 
<?php $__env->startSection('title','Hot Deals'); ?>
<?php $__env->startPush('css'); ?>
<link rel="stylesheet" href="<?php echo e(asset('public/frontEnd/css/jquery-ui.css')); ?>" />
<?php $__env->stopPush(); ?> 
<?php $__env->startSection('content'); ?>
<section class="product-section">
    <div class="container">
        <div class="sorting-section">
            <div class="row">
                <div class="col-sm-6">
                    <div class="category-breadcrumb d-flex align-items-center">
                        <a href="<?php echo e(route('home')); ?>">Home</a>
                        <span>/</span>
                        <strong>Hot Deals</strong>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="showing-data">
                                <span>Showing <?php echo e($products->firstItem()); ?>-<?php echo e($products->lastItem()); ?> of <?php echo e($products->total()); ?> Results</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mobile-filter-toggle">
                                <i class="fa fa-list-ul"></i><span>filter</span>
                            </div>
                            <div class="page-sort">
                                <form action="" class="sort-form">
                                    <select name="sort" class="form-control form-select sort">
                                        <option value="1" <?php if(request()->get('sort')==1): ?>selected <?php endif; ?>>Product: Latest</option>
                                        <option value="2" <?php if(request()->get('sort')==2): ?>selected <?php endif; ?>>Product: Oldest</option>
                                        <option value="3" <?php if(request()->get('sort')==3): ?>selected <?php endif; ?>>Price: High To Low</option>
                                        <option value="4" <?php if(request()->get('sort')==4): ?>selected <?php endif; ?>>Price: Low To High</option>
                                        <option value="5" <?php if(request()->get('sort')==5): ?>selected <?php endif; ?>>Name: A-Z</option>
                                        <option value="6" <?php if(request()->get('sort')==6): ?>selected <?php endif; ?>>Name: Z-A</option>
                                    </select>
                                    <input type="hidden" name="min_price" value="<?php echo e(request()->get('min_price')); ?>" />
                                    <input type="hidden" name="max_price" value="<?php echo e(request()->get('max_price')); ?>" />
                                </form>
                            </div>
                            
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-sm-12">
                 <div class="offer_timer" id="simple_timer"></div>
            </div>
            <div class="col-sm-12">
                <div class="category-product main_product_inner">
                    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="product_item wist_item wow zoomIn" data-wow-duration="1.5s"
                            data-wow-delay="0.<?php echo e($key); ?>s">
                            <div class="product_item_inner">
                                <?php if($value->old_price): ?>
                                <div class="sale-badge">
                                    <div class="sale-badge-inner">
                                        <div class="sale-badge-box">
                                            <span class="sale-badge-text">
                                                <p><?php $discount=(((($value->old_price)-($value->new_price))*100) / ($value->old_price)) ?> <?php echo e(number_format($discount, 0)); ?>%</p>
                                                ছাড়
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <?php endif; ?>
                                <div class="pro_img">
                                    <a href="<?php echo e(route('product', $value->slug)); ?>">
                                        <img src="<?php echo e(asset($value->image ? $value->image->image : '')); ?>"
                                            alt="<?php echo e($value->name); ?>" />
                                    </a>
                                </div>
                                <div class="pro_des">
                                    <div class="pro_name">
                                        <a
                                            href="<?php echo e(route('product', $value->slug)); ?>"><?php echo e(Str::limit($value->name, 35)); ?></a>
                                    </div>
                                </div>
                            </div>
                            <?php
                                $averageRating = $value->reviews->avg('ratting'); 
                                $filledStars = floor($averageRating);
                                $hasHalfStar = $averageRating - $filledStars >= 0.5;
                                $emptyStars = 5 - $filledStars - ($hasHalfStar ? 1 : 0);
                            ?>

                            <?php if($averageRating >= 0 && $averageRating <= 5): ?>
                                
                                <?php for($i = 0; $i < $filledStars; $i++): ?>
                                    <i class="fas fa-star"></i>
                                <?php endfor; ?>

                                
                                <?php if($hasHalfStar): ?>
                                    <i class="fas fa-star-half-alt"></i>
                                <?php endif; ?>

                                
                                <?php for($i = 0; $i < $emptyStars; $i++): ?>
                                    <i class="far fa-star"></i>
                                <?php endfor; ?>
                            <?php else: ?>
                                <span>Invalid rating range</span>
                            <?php endif; ?>

                             <div class="pro_price">
                                <p>
                                    <del>৳ <?php echo e($value->old_price); ?></del>
                                    ৳ <?php echo e($value->new_price); ?> <?php if($value->old_price): ?>
                                    <?php endif; ?>
                                </p>
                            </div>
                            <?php if(!$value->prosizes->isEmpty() || !$value->procolors->isEmpty()): ?>
                            <div class="pro_btn">
                                <div class="cart_btn order_button">
                                    <a href="<?php echo e(route('product', $value->slug)); ?>"
                                        class="addcartbutton">
                                        <span>অর্ডার করুন</span>
                                    </a>
                                </div>
                               
                            </div>
                            <?php else: ?>
                            <div class="pro_btn">
                                <div class="cart_btn order_button">
                                    <a class="addcartbutton" data-id="<?php echo e($value->id); ?>" data-checkout="yes">
                                        <span>অর্ডার করুন</span>
                                    </a>
                                </div>
                            </div>
                            <?php endif; ?>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="custom_paginate">
                    <?php echo e($products->links('pagination::bootstrap-4')); ?>

                   
                </div>
            </div>
        </div>
    </div>
</section>


<?php $__env->stopSection(); ?>
<?php $__env->startPush('script'); ?>
<script>
    $(".sort").change(function(){
       $('#loading').show();
       $(".sort-form").submit();
    })
</script>
<script>
    $("#simple_timer").syotimer({
        date: new Date(2015, 0, 1),
        layout: "hms",
        doubleNumbers: false,
        effectType: "opacity",

        periodUnit: "d",
        periodic: true,
        periodInterval: 1,
    });
</script>
<?php $__env->stopPush(); ?>
<?php echo $__env->make('frontEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH F:\xampp\htdocs\resources\views/frontEnd/layouts/pages/hotdeals.blade.php ENDPATH**/ ?>