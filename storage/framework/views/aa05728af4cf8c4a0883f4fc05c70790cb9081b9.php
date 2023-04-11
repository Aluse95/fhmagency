<?php if($block): ?>
  <?php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $content = $block->json_params->content->{$locale} ?? $block->content;
    $image = $block->image != '' ? $block->image : null;
    $background = $block->image_background != '' ? $block->image_background : null;
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    
  ?>

  <div id="contact" class="section my-0">
    <h3 class="text-center mb-5 block-title text-uppercase"><?php echo e($title); ?></h3>
    <div class="container">
      <div class="row justify-content-between align-items-center">
        <div class="col-lg-6 col-md-6 col-12 mb-5">
          <img class="lazyload img-fluid w-100"
            src="<?php echo e(asset('images/lazyload.gif')); ?>"
            data-src="<?php echo e($image); ?>" alt="<?php echo e($title); ?>"
          />
        </div>
        <div class="col-lg-6 col-md-6 col-12 wrap-card">
          <div class="card shadow-sm">
            <div class="card-body">
              <h4 class="my-4 text-center"><?php echo e($brief); ?></h4>
              <div class="form-widget">
                <div class="form-result"></div>
                <form class="row mb-4 form_ajax" id="template-contactform" name="template-contactform"
                  action="<?php echo e(route('frontend.contact.store')); ?>" method="post">
                  <?php echo csrf_field(); ?>
                  <div class="col-12 form-group mb-3">
                    <label for="name"><?php echo app('translator')->get('Fullname'); ?> *</label>
                    <input type="text" id="name" name="name" class="form-control input-sm required"
                      value="" required>
                  </div>
                  <div class="col-12 form-group mb-3">
                    <label for="phone"><?php echo app('translator')->get('phone'); ?> *</label>
                    <input type="text" id="phone" name="phone" class="form-control input-sm required"
                      value="" required>
                  </div>
                  <div class="col-12 form-group mb-3">
                    <label for="email">Ngành nghề</label>
                    <input type="text" id="email" name="email" class="form-control input-sm" value="">
                  </div>
                  <div class="col-12 form-group mb-4">
                    <label for="content"><?php echo app('translator')->get('Content'); ?></label>
                    <textarea type="text" id="content" name="content" class="form-control input-sm required" value=""></textarea>
                  </div>
                  <div class="col-12 form-group mb-0">
                    <button class="button button-dark button-rounded text-end mx-0 mt-3 text-uppercase"
                      type="submit" id="submit" name="submit" value="submit">
                      Gửi đăng ký

                    </button>
                  </div>
                  <input type="hidden" name="is_type" value="call_request">
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<?php endif; ?>
<?php /**PATH D:\xampp\htdocs\advertisement\resources\views/frontend/blocks/form/styles/booking.blade.php ENDPATH**/ ?>