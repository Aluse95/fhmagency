@if ($block)
  @php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $background = $block->image_background != '' ? $block->image_background : '';
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $icon = $block->icon ?? '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    
    $block_childs = $blocks->filter(function ($item, $key) use ($block) {
      return $item->parent_id == $block->id;
    });
  @endphp

  <section id="slider" class="bg-gray slider-element swiper_wrapper" data-autoplay="6000" data-speed="800" data-loop="true"
  data-grab="true" data-effect="slide" data-arrow="false" style="height: 50vw">
    <h3 class="center">{{ $title }}</h3>
    <div class="swiper-container swiper-parent">
      <div class="swiper-wrapper">
        @if ($block_childs)
          @foreach ($block_childs as $item)
            @php
              $title_child = $item->json_params->title->{$locale} ?? $item->title;
              $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
              $content_child = $item->json_params->content->{$locale} ?? $item->content;
              $image_child = $item->image != '' ? $item->image : null;
              $url_link = $item->url_link != '' ? $item->url_link : 'javascript:void(0)';
              $url_link_title = $item->json_params->url_link_title->{$locale} ?? $item->url_link_title;
              $icon = $item->icon != '' ? $item->icon : '';
            @endphp

            <div class="swiper-slide dark center">
              <img class="img-fluid w-75" src="{{ $image_child }}" alt="{{ $title_child }}">
            </div>
          @endforeach
        @endif
        </div>
        </div>
      <div class="swiper-pagination"></div>
    </div>
  </section>
@endif
