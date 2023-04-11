<?php if($block): ?>
  <?php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $content = $block->json_params->content->{$locale} ?? $block->content;
    $image = $block->image != '' ? $block->image : '';
    $image_background = $block->image_background != '' ? $block->image_background : '';
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;

    // Filter all blocks by parent_id
    $block_childs = $blocks->filter(function ($item, $key) use ($block) {
        return $item->parent_id == $block->id;
    });
  ?>

  <div class="section p-0 my-0 bg-transparent clearfix" style="border-top: 1px solid #EEE; border-bottom: 1px solid #EEE;">
    <div class="container my-5">
      <div class="row align-items-stretch clearfix">
        <div class="col-lg-6 center" style="background: url('<?php echo e($image); ?>') center center no-repeat; background-size: cover;">
        </div>
        <div class="col-lg-6">
          <div>
            <div style="position: relative;">
              <div class="center border-0" data-heading="A">
                <h3 class="nott ls0 mb-2 block-title"><?php echo $title; ?></h3>
                <p><?php echo $brief; ?></p>
              </div>
            </div>
            <div class="row clearfix">
              <?php if($block_childs): ?>
                <?php $__currentLoopData = $block_childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <?php
                    $title_child = $item->json_params->title->{$locale} ?? $item->title;
                    $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
                    $content_child = $item->json_params->content->{$locale} ?? $item->content;
                    $image_child = $item->image != '' ? $item->image : null;
                    $url_link = $item->url_link != '' ? $item->url_link : 'javascript:void(0)';
                    $url_link_title = $item->json_params->url_link_title->{$locale} ?? $item->url_link_title;
                    $icon = $item->icon != '' ? $item->icon : '';
                  ?>
  
                  <div class="col-lg-12 col-md-12 mb-3">
                    <div class="problem-item">
                      <p class="m-0"><?php echo $title_child; ?></p>
                    </div>
                  </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              <?php endif; ?>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<?php endif; ?>
<?php /**PATH D:\xampp\htdocs\advertisement\resources\views/frontend/blocks/custom/styles/problems.blade.php ENDPATH**/ ?>