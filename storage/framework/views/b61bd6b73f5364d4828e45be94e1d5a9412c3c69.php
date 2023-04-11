<?php if($block): ?>
  <?php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $content = $block->json_params->content->{$locale} ?? $block->content;
    $image = $block->image != '' ? $block->image : '';
    $image_background = $block->image_background != '' ? $block->image_background : '#f1f1f1';
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    $style = isset($block->json_params->style) && $block->json_params->style == 'slider-caption-right' ? 'd-none' : '';
    
    // Filter all blocks by parent_id
    $block_childs = $blocks->filter(function ($item, $key) use ($block) {
        return $item->parent_id == $block->id;
    });
    $childs = $block_childs->chunk(3);
  ?>

  <div class="section m-0 py-5 benefit">
    <div class="container">
      <div class="border-bottom-0 center mx-auto mb-0">
        <h3 class="nott ls0 mb-5 block-title"><?php echo e($title); ?></h3>
      </div>
      <div class="row justify-content-between align-items-center">
        <div class="col-lg-4 col-sm-6">
          <?php if(isset($childs[0])): ?>
            <?php $__currentLoopData = $childs[0]; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <?php
                $title_child = $item->json_params->title->{$locale} ?? $item->title;
                $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
                $content_child = $item->json_params->content->{$locale} ?? $item->content;
                $image_child = $item->image != '' ? $item->image : null;
                $url_link = $item->url_link != '' ? $item->url_link : 'javascript:void(0)';
                $url_link_title = $item->json_params->url_link_title->{$locale} ?? $item->url_link_title;
                $icon = $item->icon != '' ? $item->icon : '';
              ?>

              <div class="feature-box flex-md-row-reverse text-md-end border-0  mb-5">
                <div class="fbox-icon">
                  
                  <?php echo $icon; ?>

                </div>
                <div class="fbox-content">
                  <p class="nott ls0 text-white fw-bold"><?php echo e($title_child); ?></p>
                </div>
              </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          <?php endif; ?>
        </div>

        <div class="col-lg-3 col-7 offset-3 offset-sm-0 d-sm-none d-lg-block center image-benefit">
          <img class="lazyload rounded parallax"
              src="<?php echo e(asset('images/lazyload.gif')); ?>"
              data-src="<?php echo e($image); ?>" alt="<?php echo e($title); ?>" 
              data-bottom-top="transform: translateY(-30px)" 
              data-top-bottom="transform: translateY(30px)"
            />
        </div>

        <div class="col-lg-4 col-sm-6">
          <?php if(isset($childs[1])): ?>
            <?php $__currentLoopData = $childs[1]; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <?php
                $title_child_2 = $item->json_params->title->{$locale} ?? $item->title;
                $brief_child_2 = $item->json_params->brief->{$locale} ?? $item->brief;
                $content_child_2 = $item->json_params->content->{$locale} ?? $item->content;
                $image_child_2 = $item->image != '' ? $item->image : null;
                $url_link = $item->url_link != '' ? $item->url_link : 'javascript:void(0)';
                $url_link_title = $item->json_params->url_link_title->{$locale} ?? $item->url_link_title;
                $icon = $item->icon != '' ? $item->icon : '';
              ?>

              <div class="feature-box border-0 mb-5">
                <div class="fbox-icon">
                  
                  <?php echo $icon; ?>

                </div>
                <div class="fbox-content">
                  <p class="nott ls0 fw-bold"><?php echo e($title_child); ?></p>
                </div>
              </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          <?php endif; ?>
        </div>
      </div>
    </div>
  </div>
<?php endif; ?>
<?php /**PATH D:\xampp\htdocs\advertisement\resources\views/frontend/blocks/custom/styles/benefit.blade.php ENDPATH**/ ?>