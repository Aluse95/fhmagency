<?php if($block): ?>
  <?php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $content = $block->json_params->content->{$locale} ?? $block->content;
    $image = $block->image != '' ? $block->image : '';
    $image_background = $block->image_background != '' ? $block->image_background : '';
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    
    // Filter all blocks by parent_id
    $block_childs = $blocks->filter(function ($item, $key) use ($block) {
        return $item->parent_id == $block->id;
    });
  ?>

  <style>
    .section h3 {
      color: #333;
    }
    .input-intro {
      width: 30%;
      height: 40px;
      padding-left: 10px;
      border: 1px solid #ccc;
      border-top-left-radius: 6px;
      border-bottom-left-radius: 6px;
    }
    .btn-intro {
      border-top-right-radius: 6px;
      border-bottom-right-radius: 6px;
    }
    .bg-gray {
      background-color: #f6f6f6 !important;
    }
    .color {
      color: #67a0ea !important;
    }
    .subtitle {
      color: #999 !important;
      font-size: 16px;
      font-weight: 500 !important;
      font-family: "Montserrat", sans-serif !important;
    }
    .testimonials-carousel .owl-stage { padding-top: 40px }

    .testimonials-carousel .owl-item {
      opacity: .6;
      transition: transform .3s ease;
      transform: scale(0.8);
    }

    .testimonials-carousel .owl-item.active.center {
      opacity: 1;
      transform: scale(1);
    }
    .testimonial {
      border: 0;
      box-shadow: 0 0 35px rgba(140, 152, 164, 0.2);
      border-radius: 0.25rem;
      padding: 25px;
    }

    .testi-image {
      float: none;
      margin: -55px auto 0;
      margin-bottom: 20px;
    }

    .testi-content p {
      text-align: center;
      font-style: normal;
      font-family: var(--fontfamily,'Poppins', sans-serif);
      font-size: var(--basefontsize, 16px);
    }

    .testi-meta {
      text-align: center;
      margin-top: 20px;
    }
    .card {
      border-radius: 12px;
    }
  </style>

  <div class="section p-0 my-0 bg-transparent clearfix" style="border-top: 1px solid #EEE; border-bottom: 1px solid #EEE;">
    <div class="row align-items-stretch clearfix">
      <div class="col-lg-6 center col-padding" style="background: url('<?php echo e(asset('images/vision.jpg')); ?>') center center no-repeat; background-size: cover;">
        <div>&nbsp;</div>
      </div>

      <div class="col-lg-6 col-padding">
        <div>
          <div style="position: relative;">
            <div class="heading-block center border-0" data-heading="A">
              <h3 class="nott ls0 mb-2">Dịch vụ Quảng cáo tại FHM Việt Nam</h3>
              <p>Powerful Layout with Responsive functionality that can be adapted to any screen size. Resize browser to view.</p>
            </div>
          </div>

          <!-- About Us Featured Boxes
          ============================================= -->
          <div class="row clearfix">
            <div class="col-lg-10 col-md-8 bottommargin">
              <div class="feature-box fbox-plain">
                <div class="fbox-icon">
                  <a href="#">
                    <img src="<?php echo e(asset('images/images.png')); ?>" alt="image">
                  </a>
                </div>
                <div class="fbox-content">
                  <h3>1. Mang tới nhiều giải pháp phù hợp với doanh nghiệp</h3>
                  <p>Powerful Layout with Responsive functionality that can be adapted to any screen size. Resize browser to view.</p>
                </div>
              </div>
            </div>
            <div class="col-lg-10 col-md-8 bottommargin">
              <div class="feature-box fbox-plain">
                <div class="fbox-icon">
                  <a href="#">
                    <img src="<?php echo e(asset('images/images.png')); ?>" alt="image">
                  </a>
                </div>
                <div class="fbox-content">
                  <h3>2. Thúc đẩy doanh số bán hàng</h3>
                  <p>Powerful Layout with Responsive functionality that can be adapted to any screen size. Resize browser to view.</p>
                </div>
              </div>
            </div>
            <div class="col-lg-10 col-md-8 bottommargin">
              <div class="feature-box fbox-plain">
                <div class="fbox-icon">
                  <a href="#">
                    <img src="<?php echo e(asset('images/images.png')); ?>" alt="image">
                  </a>
                </div>
                <div class="fbox-content">
                  <h3>3. Tiết kiệm chi phí quảng cáo</h3>
                  <p>Powerful Layout with Responsive functionality that can be adapted to any screen size. Resize browser to view.</p>
                </div>
              </div>
            </div>
            <div class="col-lg-10 col-md-8 bottommargin">
              <div class="feature-box fbox-plain">
                <div class="fbox-icon">
                  <a href="#">
                    <img src="<?php echo e(asset('images/images.png')); ?>" alt="image">
                  </a>
                </div>
                <div class="fbox-content">
                  <h3>4. Tiếp cận nhiều khách hàng tiềm năng hơn</h3>
                  <p>Powerful Layout with Responsive functionality that can be adapted to any screen size. Resize browser to view.</p>
                </div>
              </div>
            </div>
            <div class="col-lg-10 col-md-8">
              <div class="feature-box fbox-plain">
                <div class="fbox-icon">
                  <a href="#">
                    <img src="<?php echo e(asset('images/images.png')); ?>" alt="image">
                  </a>
                </div>
                <div class="fbox-content">
                  <h3>5. Luôn đưa ra các bảng báo cáo minh bạch - rõ ràng</h3>
                  <p>Powerful Layout with Responsive functionality that can be adapted to any screen size. Resize browser to view.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>

  

  <div class="section bg-gray m-0 pb-3">
    <div class="container">
      <div class="border-bottom-0 center mx-auto mb-0"
        style="max-width: 550px">
        <h3 class="nott ls0 mb-5">Có phải bạn đang gặp các vấn đề ?</h3>
      </div>
      <div class="row justify-content-between align-items-center mb-5">
        <div class="col-lg-4 col-sm-6">
          <div
            class="feature-box flex-md-row-reverse text-md-end border-0"
          >
            <div class="fbox-icon">
              <a href="#"
                ><img
                  src="<?php echo e(asset('images/images.png')); ?>"
                  alt="Feature Icon"
                  class="bg-transparent rounded-0"
              /></a>
            </div>
            <div class="fbox-content">
              <h3 class="nott ls0">Doanh số sụt giảm nghiêm trọng</h3>
            </div>
          </div>

          <div
            class="feature-box flex-md-row-reverse text-md-end border-0 mt-5"
          >
            <div class="fbox-icon">
              <a href="#"
                ><img
                  src="<?php echo e(asset('images/images.png')); ?>"
                  alt="Feature Icon"
                  class="bg-transparent rounded-0"
              /></a>
            </div>
            <div class="fbox-content">
              <h3 class="nott ls0">Đơn vị kinh doanh mới, không có khả năng cạnh tranh</h3>
            </div>
          </div>

          <div
            class="feature-box flex-md-row-reverse text-md-end border-0 mt-5"
          >
            <div class="fbox-icon">
              <a href="#"
                ><img
                  src="<?php echo e(asset('images/images.png')); ?>"
                  alt="Feature Icon"
                  class="bg-transparent rounded-0"
              /></a>
            </div>
            <div class="fbox-content">
              <h3 class="nott ls0">Không có kiến thức để chạy quảng cáo</h3>
            </div>
          </div>
        </div>

        <div
          class="col-lg-3 col-7 offset-3 offset-sm-0 d-sm-none d-lg-block center"
        >
          <img
            src="<?php echo e(asset('images/web.png')); ?>"
            alt="iphone"
            class="rounded parallax"
            data-bottom-top="transform: translateY(-30px)"
            data-top-bottom="transform: translateY(30px)"
          />
        </div>

        <div class="col-lg-4 col-sm-6">
          <div class="feature-box border-0">
            <div class="fbox-icon">
              <a href="#"
                ><img
                  src="<?php echo e(asset('images/images.png')); ?>"
                  alt="Feature Icon"
                  class="bg-transparent rounded-0"
              /></a>
            </div>
            <div class="fbox-content">
              <h3 class="nott ls0">Tự chạy quảng cáo nhưng không hiệu quả</h3>
              
            </div>
          </div>

          <div class="feature-box border-0 mt-5">
            <div class="fbox-icon">
              <a href="#"
                ><img
                  src="<?php echo e(asset('images/images.png')); ?>"
                  alt="Feature Icon"
                  class="bg-transparent rounded-0"
              /></a>
            </div>
            <div class="fbox-content">
              <h3 class="nott ls0">Sản phẩm có tính cạnh tranh khá cao</h3>
              
            </div>
          </div>

          <div class="feature-box border-0 mt-5">
            <div class="fbox-icon">
              <a href="#"
                ><img
                  src="<?php echo e(asset('images/images.png')); ?>"
                  alt="Feature Icon"
                  class="bg-transparent rounded-0"
              /></a>
            </div>
            <div class="fbox-content">
              <h3 class="nott ls0">Không có đội ngũ chuyên môn cho doanh nghiệp</h3>
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="section bg-transparent my-0 clearfix">
    <div class="container clearfix">
      <h3 class="text-center mb-3">FHM sẽ tối ưu và giải quyết triệt để bài toán Marketing cho doanh nghiệp</h3>
      <p class="text-center mb-5">Dẫn đầu xu hướng quảng cáo Digital - Nâng cao doanh số và phát triển thương hiệu cho doanh nghiệp</p>
      <div class="row justify-content-center col-mb-50 py-3">
        <div class="col-sm-6 col-lg-4">
          <div class="feature-box fbox-plain">
            <div class="fbox-icon">
              <a href="#"
                ><img
                  src="<?php echo e(asset('images/images.png')); ?>"
                  alt="Image"
              /></a>
            </div>
            <div class="fbox-content">
              <h3 class="nott fw-semibold ls0">Chạy quảng cáo hiệu quả trên đa nền tảng</h3>
              
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-lg-4">
          <div class="feature-box fbox-plain">
            <div class="fbox-icon">
              <a href="#"
                ><img
                  src="<?php echo e(asset('images/images.png')); ?>"
                  alt="Image"
              /></a>
            </div>
            <div class="fbox-content">
              <h3 class="nott fw-semibold ls0">Target đúng khách hàng</h3>
             
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-lg-4">
          <div class="feature-box fbox-plain">
            <div class="fbox-icon">
              <a href="#"
                ><img
                  src="<?php echo e(asset('images/images.png')); ?>"
                  alt="Image"
              /></a>
            </div>
            <div class="fbox-content">
              <h3 class="nott fw-semibold ls0">Tăng doanh số hiệu quả</h3>
              
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-lg-4">
          <div class="feature-box fbox-plain">
            <div class="fbox-icon">
              <a href="#"
                ><img
                  src="<?php echo e(asset('images/images.png')); ?>"
                  alt="Image"
              /></a>
            </div>
            <div class="fbox-content">
              <h3 class="nott fw-semibold ls0">Tăng lượng tiếp cận, tương tác trên fanpage</h3>
              
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-lg-4">
          <div class="feature-box fbox-plain">
            <div class="fbox-icon">
              <a href="#"
                ><img
                  src="<?php echo e(asset('images/images.png')); ?>"
                  alt="Image"
              /></a>
            </div>
            <div class="fbox-content">
              <h3 class="nott fw-semibold ls0">Xử lý hình ảnh sản phẩm, banner đẹp, bắt mắt</h3>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-lg-4">
          <div class="feature-box fbox-plain">
            <div class="fbox-icon">
              <a href="#"
                ><img
                  src="<?php echo e(asset('images/images.png')); ?>"
                  alt="Image"
              /></a>
            </div>
            <div class="fbox-content">
              <h3 class="nott fw-semibold ls0">Tiết kiệm tối đa chi phí so với các kênh quảng cáo khác</h3>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-lg-4">
          <div class="feature-box fbox-plain">
            <div class="fbox-icon">
              <a href="#"
                ><img
                  src="<?php echo e(asset('images/images.png')); ?>"
                  alt="Image"
              /></a>
            </div>
            <div class="fbox-content">
              <h3 class="nott fw-semibold ls0">Cập nhật bài viết hàng ngày với nội dung hấp dẫn người đọc</h3>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-lg-4">
          <div class="feature-box fbox-plain">
            <div class="fbox-icon">
              <a href="#"
                ><img
                  src="<?php echo e(asset('images/images.png')); ?>"
                  alt="Image"
              /></a>
            </div>
            <div class="fbox-content">
              <h3 class="nott fw-semibold ls0">Tạo nên nguồn khách hàng tiềm năng cho doanh nghiệp của bạn</h3>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-lg-4">
          <div class="feature-box fbox-plain">
            <div class="fbox-icon">
              <a href="#"
                ><img
                  src="<?php echo e(asset('images/images.png')); ?>"
                  alt="Image"
              /></a>
            </div>
            <div class="fbox-content">
              <h3 class="nott fw-semibold ls0">Giúp nhận diện được thương hiệu và sản phẩm một cách nhanh nhất</h3>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
          <div class="feature-box fbox-plain">
            <div class="fbox-icon">
              <a href="#"
                ><img
                  src="<?php echo e(asset('images/images.png')); ?>"
                  alt="Image"
              /></a>
            </div>
            <div class="fbox-content">
              <h3 class="nott fw-semibold ls0">Thiết kế banner quảng cáo ấn tượng, đúng tiêu chuẩn kiểm duyệt của các nền tảng (Facebook, Google, TikTok,...)</h3>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="section bg-gray pb-0 my-0">
    <div class="container clearfix">
      <div class="row clearfix">
        <div class="center col-lg-8 offset-lg-2">
          <h3
            class="text-rotater"
            data-separator=","
            data-rotate="fadeInRight"
            data-speed="3500"
          >
            FHM Agency cung cấp tất cả các dịch vụ
            <span class="t-rotate color mt-3 mb-0">
              Quảng cáo Facebook, Quảng cáo Google, Quảng cáo Tiktok
            </span>
          </h3>
        </div>
        <div class="clear"></div>
  
        <!-- Features colomns
      ============================================= -->
        <div class="row clearfix">
          <div class="col-lg-4 mb-4">
            <div class="feature-box media-box fbox-bg">
              <div class="fbox-media">
                <a href="#"
                  ><img
                    src="https://images.unsplash.com/photo-1542744173-05336fcc7ad4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=802&q=80"
                    alt="Featured Box Image"
                /></a>
              </div>
              <div class="fbox-content fbox-content-lg">
                <h3 class="nott ls0 mb-4">
                  Quảng cáo Facebook<span class="subtitle ls0"
                    >Tiếp cận đến cá nhân từng khách hàng, giúp gia tăng mức độ nhận diện thương hiệu và doanh số bán hàng.</span>
                </h3>
                
              </div>
            </div>
          </div>
          <div class="col-lg-4 mb-4">
            <div class="feature-box media-box fbox-bg">
              <div class="fbox-media">
                <a href="#"
                  ><img
                    src="https://images.unsplash.com/photo-1460925895917-afdab827c52f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=815&q=80"
                    alt="Featured Box Image"
                /></a>
              </div>
              <div class="fbox-content fbox-content-lg">
                <h3 class="nott ls0 mb-4">
                  Quảng cáo Google<span
                    class="subtitle ls0"
                    >Dịch vụ thiết kế website chuẩn SEO chất lượng cao,
                    tối ưu trải nghiệm người dùng và thân thiện với mọi
                    trình duyệt.</span
                  >
                </h3>
                
              </div>
            </div>
          </div>
          <div class="col-lg-4 mb-4">
            <div class="feature-box media-box fbox-bg">
              <div class="fbox-media">
                <a href="#"
                  ><img
                    src="https://images.unsplash.com/photo-1460925895917-afdab827c52f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=815&q=80"
                    alt="Featured Box Image"
                /></a>
              </div>
              <div class="fbox-content fbox-content-lg">
                <h3 class="nott ls0 mb-4">
                  Quảng cáo Tiktok<span
                    class="subtitle ls0"
                    >FHM Việt Nam tự hào là đơn vị cung cấp giải pháp
                    Content Marketing uy tín chất lượng. Giải pháp chúng
                    tôi mang đến...</span
                  >
                </h3>
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <section id="slider" class="bg-gray slider-element swiper_wrapper" data-autoplay="6000" data-speed="800" data-loop="true"
        data-grab="true" data-effect="slide" data-arrow="false" style="height: 50vw">
    <h3 class="center">Case Study</h3>
    <div class="swiper-container swiper-parent">
      <div class="swiper-wrapper">
        <div class="swiper-slide dark center">
          <img class="img-fluid w-75" src="<?php echo e(asset('images/camp1.jpg')); ?>" alt="image">
        </div>
        <div class="swiper-slide dark center">
          <img class="img-fluid w-75" src="<?php echo e(asset('images/camp2.jpg')); ?>" alt="image">
        </div>
        <div class="swiper-slide dark center">
          <img class="img-fluid w-75" src="<?php echo e(asset('images/camp5.png')); ?>" alt="image">
        </div>
      </div>
      <div class="swiper-pagination"></div>
      
    </div>
  </section>

  <div class="section p-0 mt-0 bg-transparent clearfix">
    <h3 class="text-center mt-5 mb-3">Gia tăng doanh số cùng FHM Việt Nam</h3>
    <p class="text-center">Bắt đầu bằng ngân sách phù hợp với khả năng của doanh nghiệp</p>
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-md-4 col-12">
          <img class="img-fluid w-100" src="<?php echo e(asset('images/price.jpg')); ?>" alt="price">
        </div>
        <div class="col-lg-4 col-md-4 col-12">
          <img class="img-fluid w-100" src="<?php echo e(asset('images/price.jpg')); ?>" alt="price">
        </div>
        <div class="col-lg-4 col-md-4 col-12">
          <img class="img-fluid w-100" src="<?php echo e(asset('images/price.jpg')); ?>" alt="price">
        </div>
      </div>
    </div>
  </div>

  <div class="section bg-gray my-0">
    <div class="container clearfix">
      <h3 class="text-center mb-5">Đối tác của chúng tôi</h3>
      <div id="oc-clients" class="owl-carousel image-carousel carousel-widget" data-margin="60" data-loop="true" data-nav="false" data-autoplay="5000" data-pagi="false" data-items-xs="2" data-items-sm="3" data-items-md="4" data-items-lg="5" data-items-xl="6">
        <div class="oc-item"><a href="#"><img src="<?php echo e(asset('images/vin.png')); ?>" alt="Clients"></a></div>
        <div class="oc-item"><a href="#"><img src="<?php echo e(asset('images/vin.png')); ?>" alt="Clients"></a></div>
        <div class="oc-item"><a href="#"><img src="<?php echo e(asset('images/vin.png')); ?>" alt="Clients"></a></div>
        <div class="oc-item"><a href="#"><img src="<?php echo e(asset('images/vin.png')); ?>" alt="Clients"></a></div>
        <div class="oc-item"><a href="#"><img src="<?php echo e(asset('images/vin.png')); ?>" alt="Clients"></a></div>
        <div class="oc-item"><a href="#"><img src="<?php echo e(asset('images/vin.png')); ?>" alt="Clients"></a></div>
        <div class="oc-item"><a href="#"><img src="<?php echo e(asset('images/vin.png')); ?>" alt="Clients"></a></div>
      </div>
    </div>
  </div>

  <div class="section my-0">
    <div class="container">
      <div class="border-bottom-0 center">
        <h3 class="nott ls0">Khách hàng nói về chúng tôi</h3>
      </div>

      <div id="oc-testi" class="owl-carousel testimonials-carousel carousel-widget clearfix" data-margin="0"
        data-pagi="true" data-loop="true" data-center="true" data-autoplay="5000" data-items-sm="1"
        data-items-md="2" data-items-xl="3">

        <div class="oc-item">
          <div class="testimonial">
            <div class="testi-image">
              <a href="#"><img src="<?php echo e(asset('images/4.jpg')); ?>" alt="Customer Testimonails"></a>
            </div>
            <div class="testi-content">
              <p>Incidunt deleniti blanditiis quas aperiam recusandae consequatur ullam quibusdam cum libero illo
                rerum repellendus!</p>
              <div class="testi-meta">
                John Doe
                <span>XYZ Inc.</span>
              </div>
            </div>
          </div>
        </div>

        <div class="oc-item">
          <div class="testimonial">
            <div class="testi-image">
              <a href="#"><img src="<?php echo e(asset('images/8.jpg')); ?>" alt="Customer Testimonails"></a>
            </div>
            <div class="testi-content">
              <p>Natus voluptatum enim quod necessitatibus quis expedita harum provident eos obcaecati id culpa
                corporis molestias.</p>
              <div class="testi-meta">
                Collis Ta'eed
                <span>Envato Inc.</span>
              </div>
            </div>
          </div>
        </div>
        <div class="oc-item">
          <div class="testimonial">
            <div class="testi-image">
              <a href="#"><img src="<?php echo e(asset('images/4.jpg')); ?>" alt="Customer Testimonails"></a>
            </div>
            <div class="testi-content">
              <p>Natus voluptatum enim quod necessitatibus quis expedita harum provident eos obcaecati id culpa
                corporis molestias.</p>
              <div class="testi-meta">
                Collis Ta'eed
                <span>Envato Inc.</span>
              </div>
            </div>
          </div>
        </div>
        <div class="oc-item">
          <div class="testimonial">
            <div class="testi-image">
              <a href="#"><img src="<?php echo e(asset('images/8.jpg')); ?>" alt="Customer Testimonails"></a>
            </div>
            <div class="testi-content">
              <p>Natus voluptatum enim quod necessitatibus quis expedita harum provident eos obcaecati id culpa
                corporis molestias.</p>
              <div class="testi-meta">
                Mary Jane
                <span>Google Inc.</span>
              </div>
            </div>
          </div>
        </div>
        <div class="oc-item">
          <div class="testimonial">
            <div class="testi-image">
              <a href="#"><img src="<?php echo e(asset('images/4.jpg')); ?>" alt="Customer Testimonails"></a>
            </div>
            <div class="testi-content">
              <p>Natus voluptatum enim quod necessitatibus quis expedita harum provident eos obcaecati id culpa
                corporis molestias.</p>
              <div class="testi-meta">
                Steve Jobs
                <span>Apple Inc.</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div id="contact" class="section my-0"
		style="background: url('demos/seo/images/sections/1.jpg') no-repeat center center; background-size: cover; padding: 60px 0;">
    <h3 class="text-center mb-5">Liên hệ với chúng tôi</h3>
    <div class="container">
      <div class="row justify-content-between align-items-center">

        <div class="col-lg-6 col-md-6 col-12 mb-5">
          <img class="img-fluid w-100" src="<?php echo e(asset('images/vision.jpg')); ?>" alt="img">
        </div>

        <div class="col-lg-6 col-md-6 col-12 px-5">
          <div class="card shadow-sm">
            <div class="card-body">
              <h4 class="my-4 text-center">Đăng kí ngay để nhận khuyến mãi</h4>
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
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" class="form-control input-sm" value="">
                  </div>
                  <div class="col-12 form-group mb-4">
                    <label for="content"><?php echo app('translator')->get('Content'); ?></label>
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
<?php endif; ?>

<?php /**PATH D:\xampp\htdocs\advertisement\resources\views/frontend/blocks/custom/styles/advantage.blade.php ENDPATH**/ ?>