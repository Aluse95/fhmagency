<?php if($block): ?>
  <?php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $content = $block->json_params->content->{$locale} ?? $block->content;
  ?>

  <div id="video" class="py-5">
    <div class="container center">
      <h3 class="block-title"><?php echo e($title); ?></h3>
      <div class="video-container">
        <?php echo $content; ?>

      </div>
    </div>
  </div>
<?php endif; ?>
<?php /**PATH D:\xampp\htdocs\advertisement\resources\views/frontend/blocks/banner/styles/slide.blade.php ENDPATH**/ ?>