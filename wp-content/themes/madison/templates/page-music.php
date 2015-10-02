<?php 
/*
Template Name: Music Page
*/
get_header(); the_post();
$attachment= get_field('page_background_image');
$image = wp_get_attachment_image_src($attachment,'full'); ?>

	<section class="main" style="background-image: url('<?php echo $image[0]; ?>');"> 
    <div class="overlay content-area">
      <div class="row">
        <div class="small-12 columns">
        	<h2><?php the_field('headline_text'); ?></h2>
          <a href="<?php the_field('soundcloud_player_set_link'); ?>" class="sc-player">Madison McWilliams Music Player</a>
        </div><!-- .small-12 -->
      </div><!-- .row -->
    </div><!-- .overlay -->
  
  </section><!-- .main -->

<?php get_footer() ?>