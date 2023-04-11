@if ($block)
  @php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $content = $block->json_params->content->{$locale} ?? $block->content;
    $image_background = $block->image_background != '' ? $block->image_background : '#f1f1f1';

    $block_childs = $blocks->filter(function ($item, $key) use ($block) {
        return $item->parent_id == $block->id;
    });
  @endphp

  <style>
    .testi-content p, 
    .testi-meta {
      font-family: "Montserrat", sans-serif !important;
    }
  </style>

  <div class="section my-0 testimonials">
    <div class="container">
      <div class="border-bottom-0 center">
        <h3 class="nott ls0 block-title">{{ $title }}</h3>
      </div>
      <div id="oc-testi" class="owl-carousel testimonials-carousel carousel-widget clearfix" data-margin="0"
        data-pagi="true" data-loop="true" data-center="true" data-autoplay="5000" data-items-sm="1"
        data-items-md="2" data-items-xl="3">
        @if ($block_childs)
          @foreach ($block_childs as $item)
            @php
              $title_child = $item->json_params->title->{$locale} ?? $item->title;
              $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
              $content_child = $item->json_params->content->{$locale} ?? $item->content;
              $image_child = $item->image != '' ? $item->image : null;
            @endphp

            <div class="oc-item">
              <div class="testimonial">
                <div class="testi-image">
                  <a href="#"><img src="{{ $image_child }}" alt="Customer Testimonails"></a>
                </div>
                <div class="testi-content">
                  <p>{{ $content_child }}</p>
                  <div class="testi-meta">
                    {{ $title_child }}
                    <span>{{ $brief_child }}</span>
                  </div>
                </div>
              </div>
            </div>
          @endforeach
        @endif
      </div>
    </div>
  </div>
@endif
