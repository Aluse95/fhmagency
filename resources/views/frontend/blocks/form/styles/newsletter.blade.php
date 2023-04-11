@if ($block)
  @php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $content = $block->json_params->content->{$locale} ?? $block->content;
    $image = $block->image != '' ? $block->image : null;
    $background = $block->image_background != '' ? $block->image_background : null;
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    
  @endphp

  <div id="contact" class="section my-0"
    style="background: url('demos/seo/images/sections/1.jpg') no-repeat center center; background-size: cover; padding: 60px 0;">
    <h3 class="text-center mb-5">{{ $title }}</h3>
    <div class="container">
      <div class="row justify-content-between align-items-center">
        <div class="col-lg-6 col-md-6 col-12 mb-5">
          <img class="img-fluid w-100" src="{{ $image }}" alt="{{ $title }}">
        </div>
        <div class="col-lg-6 col-md-6 col-12 px-5">
          <div class="card shadow-sm">
            <div class="card-body">
              <h4 class="my-4 text-center">{{ $brief }}</h4>
              <div class="form-widget">
                <div class="form-result"></div>
                <form class="row mb-4 form_ajax" id="template-contactform" name="template-contactform"
                  action="{{ route('frontend.contact.store') }}" method="post">
                  @csrf
                  <div class="col-12 form-group mb-3">
                    <label for="name">@lang('Fullname') *</label>
                    <input type="text" id="name" name="name" class="form-control input-sm required"
                      value="" required>
                  </div>
                  <div class="col-12 form-group mb-3">
                    <label for="phone">@lang('phone') *</label>
                    <input type="text" id="phone" name="phone" class="form-control input-sm required"
                      value="" required>
                  </div>
                  <div class="col-12 form-group mb-3">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" class="form-control input-sm" value="">
                  </div>
                  <div class="col-12 form-group mb-4">
                    <label for="content">@lang('Content')</label>
                    <textarea type="text" id="content" name="content" class="form-control input-sm required" value=""></textarea>
                  </div>
                  <div class="col-12 form-group mb-0">
                    <button
                      class="button button-border button-rounded button-fill button-blue w-100 m-0 ls0 text-uppercase"
                      type="submit" id="submit" name="submit" value="submit">
                      <span>Gửi đăng ký</span>
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
@endif
