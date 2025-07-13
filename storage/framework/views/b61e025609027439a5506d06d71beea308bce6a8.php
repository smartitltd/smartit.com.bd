
<?php $__env->startSection('title','Pending Review'); ?>
<?php $__env->startSection('css'); ?>
<link href="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-bs5/css/dataTables.bootstrap5.min.css" rel="stylesheet" type="text/css" />
<link href="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-responsive-bs5/css/responsive.bootstrap5.min.css" rel="stylesheet" type="text/css" />
<link href="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-buttons-bs5/css/buttons.bootstrap5.min.css" rel="stylesheet" type="text/css" />
<link href="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-select-bs5/css/select.bootstrap5.min.css" rel="stylesheet" type="text/css" />
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    
    <!-- start page title -->
         <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <div class="page-title-right">
                    <a href="<?php echo e(route('reviews.create')); ?>" class="btn btn-primary rounded-pill">Create</a>
                </div>
                <h4 class="page-title">Pending Review</h4>
            </div>
        </div>
    </div>        
    <!-- end page title --> 
   <div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <table id="datatable-buttons" class="table table-striped dt-responsive nowrap w-100">
                    <thead>
                        <tr>
                            <th>SL</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Review</th>
                            <th>Ratting</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                
                
                    <tbody>
                        <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td><?php echo e($loop->iteration); ?></td>
                            <td><?php echo e($value->name); ?></td>
                            <td><?php echo e($value->email); ?></td>
                            <td><?php echo e(Str::limit($value->review,50)); ?></td>
                            <td><?php echo e($value->ratting); ?></td>
                            <td>
                                <div class="button-list">
                                    <?php if($value->status == 'active'): ?>
                                    <form method="post" action="<?php echo e(route('reviews.inactive')); ?>" class="d-inline"> 
                                    <?php echo csrf_field(); ?>
                                    <input type="hidden" value="<?php echo e($value->id); ?>" name="hidden_id">       
                                    <button type="button" class="btn btn-xs  btn-secondary waves-effect waves-light change-confirm"><i class="fe-thumbs-down"></i></button></form>
                                    <?php else: ?>
                                    <form method="post" action="<?php echo e(route('reviews.active')); ?>" class="d-inline">
                                        <?php echo csrf_field(); ?>
                                    <input type="hidden" value="<?php echo e($value->id); ?>" name="hidden_id">        
                                    <button type="button" class="btn btn-xs  btn-success waves-effect waves-light change-confirm"><i class="fe-thumbs-up"></i></button></form>
                                    <?php endif; ?>
                                </div>
                            </td>
                        </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </tbody>
                </table>
 
            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
   </div>
</div>
<?php $__env->stopSection(); ?>


<?php $__env->startSection('script'); ?>
<!-- third party js -->
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-responsive-bs5/js/responsive.bootstrap5.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-buttons-bs5/js/buttons.bootstrap5.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-select/js/dataTables.select.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/pdfmake/build/pdfmake.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/pdfmake/build/vfs_fonts.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/js/pages/datatables.init.js"></script>
<!-- third party js ends -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH F:\xampp\htdocs\resources\views/backEnd/review/pending.blade.php ENDPATH**/ ?>