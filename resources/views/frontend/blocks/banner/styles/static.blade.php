@if ($block)
  @php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $content = $block->json_params->content->{$locale} ?? $block->content;
    $image = $block->image != '' ? $block->image : '';
    $image_background = $block->image_background != '' ? $block->image_background : '';
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    $style = isset($block->json_params->style) && $block->json_params->style == 'slider-caption-right' ? 'd-none' : '';
    $index = 1;
    
    // Filter all blocks by parent_id
    $block_childs = $blocks->filter(function ($item, $key) use ($block) {
        return $item->parent_id == $block->id;
    });
  @endphp

  <section id="slider" class="slider-element">
    <div class="container">
      <div class="row align-items-md-end">
        <div class="col-lg-7 align-self-center flex-column pt-5">
          <h1 class="hero-title display-4 fw-bold font-body">{{ $brief }}</h1>
          <p class="my-5">{{ $content }}</p>
          <form class="mb-0 mb-5 form_ajax" id="template-contactform" name="template-contactform"
            action="{{ route('frontend.contact.store') }}" method="post">
            @csrf
            <div class="d-flex">
              <input type="text" id="phone" name="phone" class="required input-intro" value="" required
                placeholder="Nhập SĐT của bạn...">
              <button class="button button-dark text-uppercase m-0 btn-intro" type="submit" id="submit"
                name="submit" value="submit">
                <span>Đăng ký tư vấn</span>
              </button>
            </div>
            <input type="hidden" name="is_type" value="call_request">
          </form>
        </div>
        <div class="col-lg-5 align-self-center d-none d-lg-block" style="justify-content: center;
        display: flex;">
          <svg width="100%" height="auto" viewBox="0 0 224 146" fill="none" xmlns="http://www.w3.org/2000/svg">
            <rect x="0.5" y="19.5" width="223" height="126" stroke="black" />
            <path d="M60 20L71.6552 1H151.897L164 20" stroke="black" />
            <path
              d="M155.5 83C155.5 107.582 135.795 127.5 111.5 127.5C87.2047 127.5 67.5 107.582 67.5 83C67.5 58.418 87.2047 38.5 111.5 38.5C135.795 38.5 155.5 58.418 155.5 83Z"
              stroke="black" />
            <rect x="19.5" y="14.5" width="23" height="5" stroke="black" />
            <path
              d="M188.417 19.0451L202.027 7.86746L199.039 25.0954L198.918 25.792L199.615 25.6739L217.047 22.7205L205.748 36.156L205.289 36.7026L205.96 36.9474L222.542 43L205.96 49.0526L205.289 49.2974L205.748 49.844L217.047 63.2795L199.615 60.3261L198.918 60.208L199.039 60.9046L202.027 78.1325L188.417 66.9549L187.876 66.5109L187.632 67.1663L181.5 83.5718L175.368 67.1663L175.124 66.5109L174.583 66.9549L160.973 78.1325L163.961 60.9046L164.082 60.208L163.385 60.3261L145.953 63.2795L157.252 49.844L157.711 49.2974L157.04 49.0526L140.458 43L157.04 36.9474L157.711 36.7026L157.252 36.156L145.953 22.7205L163.385 25.6739L164.082 25.792L163.961 25.0954L160.973 7.86746L174.583 19.0451L175.124 19.4891L175.368 18.8337L181.5 2.42818L187.632 18.8337L187.876 19.4891L188.417 19.0451Z"
              fill="white" stroke="black" />
            <circle cx="111.5" cy="82.5" r="34" fill="white" stroke="black" />
          </svg>
        </div>
      </div>
    </div>

  </section>
@endif
