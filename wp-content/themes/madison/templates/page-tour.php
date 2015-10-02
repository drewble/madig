<?php 
/*
Template Name: Tour Page
*/
get_header(); the_post();
$attachment= get_field('page_background_image');
$image = wp_get_attachment_image_src($attachment,'full'); ?>

	<section class="main" style="background-image: url('<?php echo $image[0]; ?>');">
    <div class="content-area overlay">
      <div class="row">
        <div class="large-6 medium-7 columns">
          <div id="tour-dates"></div>
        </div><!-- .small-12 -->
      </div><!-- .row -->
    </div><!-- .overlay -->
  </section><!-- .main -->

<?php get_footer() ?>