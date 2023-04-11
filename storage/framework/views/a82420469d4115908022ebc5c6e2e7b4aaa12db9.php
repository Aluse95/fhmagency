<?php if($block): ?>
  <?php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $background = $block->image_background != '' ? $block->image_background : '';
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $icon = $block->icon ?? '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    
    $block_childs = $blocks->filter(function ($item, $key) use ($block) {
      return $item->parent_id == $block->id;
    });
  ?>

  <div class="section bg-gray pb-0 my-0">
    <div class="container clearfix">
      <div class="row clearfix">
        <div class="center col-lg-8 offset-lg-2">
          <h3
            class="text-rotater"
            data-separator=","
            data-rotate="fadeInRight"
            data-speed="3500"
          >
            <?php echo e($title); ?>

            <span class="t-rotate color mt-3 mb-0">
              <?php echo e($brief); ?>

            </span>
          </h3>
        </div>
        <div class="clear"></div>
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

              <div class="col-lg-4 mb-4">
                <div class="feature-box media-box fbox-bg">
                  <div class="fbox-media">
                    <a href="#"
                      ><img
                        src="<?php echo e($image_child); ?>"
                        alt="<?php echo e($title_child); ?>"
                    /></a>
                  </div>
                  <div class="fbox-content fbox-content-lg">
                    <h3 class="nott ls0 mb-4">
                      <?php echo e($title_child); ?><span class="subtitle ls0"
                        ><?php echo e($brief_child); ?></span>
                    </h3>
                  </div>
                </div>
              </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          <?php endif; ?>
        </div>
      </div>
    </div>
  </div>
<?php endif; ?>
<?php /**PATH D:\xampp\htdocs\advertisement\resources\views/frontend/blocks/custom/styles/service.blade.php ENDPATH**/ ?>