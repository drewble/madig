<?php get_header(); the_post(); ?>

	<section class="main">
  
    <div class="row">
      <div class="large-6 columns">
        <?php the_content(); ?>
      </div><!-- .small-12 -->
    </div><!-- .row -->
  
  </section><!-- .main -->

<?php get_footer() ?>