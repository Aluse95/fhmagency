<footer id="footer" class="bg-transparent border-1">
  <div class="container clearfix">
    <div class="footer-widgets-wrap py-5 border-bottom clearfix">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-12">
          <div class="widget clearfix">
            <h4 class="ls0 mb-3 text-uppercase">{{ $web_information->information->site_name ?? '' }}</h4>
            <ul class="list-unstyled iconlist ms-0">
              <li>Địa chỉ: {{ $web_information->information->address ?? '' }}</li>
              <li>Email: {{ $web_information->information->email ?? '' }}</li>
              <li>Điện thoại: {{ $web_information->information->phone ?? '' }}</li>
            </ul>
          </div>
        </div>
        @isset($menu)
          @php
            $footer_menu = $menu->filter(function ($item, $key) {
                return $item->menu_type == 'footer' && ($item->parent_id == null || $item->parent_id == 0);
            });
            
            $content = '';
            foreach ($footer_menu as $main_menu) {
                $url = $title = '';
                $title = isset($main_menu->json_params->title->{$locale}) && $main_menu->json_params->title->{$locale} != '' ? $main_menu->json_params->title->{$locale} : $main_menu->name;
                $content .= '<div class="col-lg-3 col-md-3 col-12"><div class="widget clearfix">';
                $content .= '<h4 class="ls0 mb-3 text-uppercase">' . $title . '</h4>';
                $content .= '<ul class="list-unstyled iconlist ms-0">';
                foreach ($menu as $item) {
                  if ($item->parent_id == $main_menu->id) {
                    $title = isset($item->json_params->title->{$locale}) && $item->json_params->title->{$locale} != '' ? $item->json_params->title->{$locale} : $item->name;
                    $url = $item->url_link;
                    $active = $url == url()->current() ? 'active' : '';
                    $content .= '<li><a href="' . $url . '">' . $title . '</a>';
                    $content .= '</li>';
                  }
                }
                $content .= '</ul>';
                $content .= '</div></div>';
            }
            echo $content;
          @endphp
        @endisset
        <div class="col-lg-3 col-md-3 col-12">
          <div class="widget clearfix">
            <h4 class="ls0 mb-3 text-uppercase">Vị trí công ty</h4>
            @if ($web_information->source_code->map)
              {!! $web_information->source_code->map !!}
            @endif
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>