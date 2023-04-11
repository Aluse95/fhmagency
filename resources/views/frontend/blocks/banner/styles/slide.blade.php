@if ($block)
  @php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $content = $block->json_params->content->{$locale} ?? $block->content;
  @endphp

  <div id="video" class="py-5">
    <div class="container center">
      <h3 class="block-title">{{ $title }}</h3>
      <div class="video-container">
        {!! $content !!}
      </div>
    </div>
  </div>
@endif
