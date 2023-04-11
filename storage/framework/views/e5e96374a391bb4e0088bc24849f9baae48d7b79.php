<?php if($block): ?>
  <?php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $content = $block->json_params->content->{$locale} ?? $block->content;
    $background = $block->image_background != '' ? $block->image_background : '';
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    
    // Filter all blocks by parent_id
    $block_childs = $blocks->filter(function ($item, $key) use ($block) {
        return $item->parent_id == $block->id;
    });
    
    $params['status'] = App\Consts::POST_STATUS['active'];
    $params['is_featured'] = true;
    $params['is_type'] = App\Consts::POST_TYPE['service'];
    $rows = App\Http\Services\ContentService::getCmsPost($params)
        ->take(3)
        ->get();
  ?>

  <div class="section bg-transparent pb-0 my-0 services">
    <div class="container clearfix">
      <div class="row clearfix">
        <div class="center col-lg-8 offset-lg-2">
          <h3 class="text-rotater block-title" data-separator="," data-rotate="fadeInRight" data-speed="3500">
            <?php echo e($title); ?>

            <span class="t-rotate color mt-3 mb-0">
              <?php echo e($brief); ?>

            </span>
          </h3>
        </div>
      </div>
      <div class="clear"></div>
      <div class="row clearfix">
        <?php if($rows): ?>
          <?php $__currentLoopData = $rows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php
              $title_child = $item->json_params->title->{$locale} ?? $item->title;
              $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
              $content_child = $item->json_params->content->{$locale} ?? $item->content;
              $image_child = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
              $date = date('H:i d/m/Y', strtotime($item->created_at));
              // Viet ham xu ly lay slug
              $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['service'], $item->taxonomy_title, $item->taxonomy_id);
              $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['service'], $title_child, $item->id, 'detail', $item->taxonomy_title);
            ?>

            <div class="col-lg-4 mb-4">
              <div class="feature-box media-box fbox-bg">
                <div class="fbox-media">
                  <a href="<?php echo e($alias); ?>">
                    <img class="lazyload"
                      src="<?php echo e(asset('images/lazyload.gif')); ?>"
                      data-src="<?php echo e($image_child); ?>" alt="<?php echo e($title_child); ?>"
                    />
                  </a>
                </div>
                <div class="fbox-content fbox-content-lg">
                  <h3 class="nott ls0 my-3">
                    <a href="<?php echo e($alias); ?>"><?php echo e($title_child); ?></a>
                    <span class="subtitle ls0"><?php echo nl2br($brief_child); ?></span>
                  </h3>
                  <a href="<?php echo e($alias); ?>" class="button button-small button-dark button-rounded text-end mx-0">Tìm
                    hiểu thêm<i class="icon-circle-arrow-right"></i></a>
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
<?php /**PATH D:\xampp\htdocs\advertisement\resources\views/frontend/blocks/cms_service/styles/default.blade.php ENDPATH**/ ?>