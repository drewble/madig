<?php 
/*
Template Name: About Page
*/
get_header(); the_post();
$attachment= get_field('page_background_image');
$image = wp_get_attachment_image_src($attachment,'full'); ?>

	<section class="main" style="background-image: url('<?php echo $image[0]; ?>');">
    <div class="gradient content-area">
      <div class="row">
        <div class="large-7 medium-6 columns">
          <h2 id="about-title">Madison McWilliams: A Powerhouse in the Making.</h2>
          <img class="hide-for-small" src="<?php echo home_url(); ?>/wp-content/uploads/2015/04/about-x.png"/>

          <?php the_field('top_content_box'); ?>
        </div><!-- .small-12 -->
      </div><!-- .row -->

      <div class="row">	
        <div class="medium-5  columns">
          <?php the_field('bottom_content_box'); ?>
        </div><!-- .small-12 -->
      </div><!-- .row -->
      </div><!-- .gradient -->
  </section><!-- .main -->

<?php get_footer() ?>