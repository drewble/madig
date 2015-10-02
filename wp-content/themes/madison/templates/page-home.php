<?php 
/*
Template Name: Home Page
*/
get_header(); ?>

  <nav class="home-nav-collapse" id="home-menu">
    <ul>
      <?php wp_nav_menu(array('menu_order', 'theme_location' => 'footer-nav', 'container' => false, 'items_wrap' => '%3$s') ); ?>
    </ul>
  </nav>

  <section class="home-wrap">
    <section class="content-area">
      <div class="row xlrg">
        <div class="large-6 medium-5 small-9 columns show-for-medium-down">
          <img src="<?php echo get_template_directory_uri(); ?>/_/img/logo.png" alt="Madison McWilliams"/>
        </div>
        <div class="small-2  columns">
          <a href="#" class="nav-toggle" id="home-nav-toggle" aria-hidden="false">
            <span>Menu</span>
          </a>

        </div>
      </div><!-- .row -->



    </section><!-- .content-area -->

    <section id="home-logo" class="show-for-large-up">
      <div class="row xlrg">
         <div class="large-6 medium-5 small-9 columns">
          <img src="<?php echo get_template_directory_uri(); ?>/_/img/logo.png" alt="Madison McWilliams"/>
        </div>
        </div><!-- .row -->
      <div class="row xlrg">
        <div class="medium-7 columns social">
          <ul>
            <li>
              <a target="_blank" href="<?php the_field('facebook_link','option'); ?>">
                <span class="icon-facebook"></span>
                <span class="mls">icon-facebook</span>
              </a>
            </li>

            <li>
              <a target="_blank" href="<?php the_field('twitter_link','option'); ?>">
                <span class="icon-twitter"></span>
                <span class="mls">icon-twitter</span>
              </a>
            </li>

            <li>
              <a target="_blank" href="<?php the_field('instagram_link','option'); ?>">
                <span class="icon-instagram"></span>
                <span class="mls">icon-instagram</span>
              </a>
            </li>

            <li>
              <a target="_blank" href="<?php the_field('youtube_link','option'); ?>">
                <span class="icon-youtube"></span>
                <span class="mls">icon-youtube</span>
              </a>
            </li>

            <li>
              <a target="_blank" href="<?php the_field('pinterest_link','option'); ?>">
                <span class="icon-pinterest"></span>
                <span class="mls">icon-pinterest</span>
              </a>
            </li>

            <li>
              <a target="_blank" href="<?php the_field('plus_link','option'); ?>">
                <span class="icon-google-plus"></span>
                <span class="mls">icon-google-plus</span>
              </a>
            </li>

          </ul>
        </div><!-- .social -->
      </div><!-- .row -->
    </section><!-- #home-logo -->
     

    <section class="main" style="background-image: url('<?php echo get_template_directory_uri(); ?>/_/img/madison-home.jpg');">
      
      
    </section><!-- .main -->
  </section><!-- .home-wrap -->

<?php get_footer() ?>