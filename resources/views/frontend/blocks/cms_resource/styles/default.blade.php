@if ($block)
  @php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    $background = $block->image_background != '' ? $block->image_background : '';
    
    $block_childs = $blocks->filter(function ($item, $key) use ($block) {
        return $item->parent_id == $block->id;
    });
    
    $params['status'] = App\Consts::POST_STATUS['active'];
    $params['is_featured'] = true;
    $params['is_type'] = App\Consts::POST_TYPE['resource'];
    $rows = App\Http\Services\ContentService::getCmsPost($params)
        ->take(3)
        ->get();
  @endphp

  <div class="section m-0 py-5 resources">
    <div class="container">
      <div class="border-bottom-0 center">
        <h3 class="nott ls0 block-title">{{ $title }}</h3>
      </div>
      <div id="portfolio" class="portfolio row grid-container gutter-20">
        @if ($rows)
          @foreach ($rows as $item)
            @php
              $title_child = $item->json_params->title->{$locale} ?? $item->title;
              $brief_child = $item->json_params->brief->{$locale} ?? $item->brief;
              $content_child = $item->json_params->content->{$locale} ?? $item->content;
              $image_child = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
              $date = date('H:i d/m/Y', strtotime($item->created_at));
              // Viet ham xu ly lay slug
              $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['service'], $item->taxonomy_title, $item->taxonomy_id);
              $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['service'], $title_child, $item->id, 'detail', $item->taxonomy_title);
            @endphp

            <article class="portfolio-item col-12 col-sm-6 col-md-4 pf-media pf-icons">
              <div class="grid-inner">
                <div class="portfolio-image">
                  <img class="lazyload"
                    src="{{ asset('images/lazyload.gif')}}"
                    data-src="{{ $image_child }}" alt="{{ $title_child }}"
                  />
                  <div class="bg-overlay">
                    <div class="bg-overlay-content dark" data-hover-animate="fadeIn" data-hover-speed="500">
                      <a href="{{ $alias }}" class="overlay-trigger-icon bg-light text-dark"
                        data-hover-animate="fadeIn" data-hover-speed="500"><i class="icon-line-ellipsis"></i></a>
                    </div>
                    <div class="bg-overlay-bg dark" data-hover-animate="fadeIn" data-hover-speed="500"></div>
                  </div>
                </div>
                <div class="portfolio-desc">
                  <h3 class="text-uppercase"><a href="{{ $alias }}">{{ $title_child }}</a></h3>
                  <a href="{{ $alias }}" class="button button-small button-dark button-rounded text-end mx-0 mt-3">
                    Tìm hiểu thêm<i class="icon-circle-arrow-right"></i></a>
                </div>
              </div>
            </article>
          @endforeach
        @endif
      </div>
    </div>
  </div>
@endif
