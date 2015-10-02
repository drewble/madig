<?php 
/*
Template Name: Contact Page
*/
get_header(); the_post();
$attachment = get_field('page_background_image');
$image = wp_get_attachment_image_src($attachment,'full'); ?>
	<section class="main contact-main">

    <section class="contact-form" style="background-image: url('<?php echo $image[0]; ?>');">
      <div class="row">
        <div class="large-5 medium-6 columns">
          <?php echo do_shortcode('[contact-form-7 id="25" html_id="main-contact-form" title="Contact form 1"]'); ?>
        </div><!-- .small-12 -->
      </div><!-- .row -->
    </section><!-- .contact-form -->

    <section class="contact-info">
      <div class="row">
        <div class="large-5 medium-6 columns">
          <h5>Booking</h5>
          <p><a href="mailto:<?php the_field('booking_info'); ?>"><?php the_field('booking_info'); ?></a></p>
        </div>

        <div class="large-2 columns show-for-large-up">
          <div class="line"></div>
          <div class="line"></div>
          <div class="line"></div>
        </div>

        <div class="large-5 medium-6 columns">
          <h5>Management</h5>
          <p><a href="mailto:<?php the_field('management_info'); ?>"><?php the_field('management_info'); ?></a></p>
        </div>
      </div><!-- .row -->
    </section><!-- .contact-info -->

  </section><!-- .main -->

<?php get_footer() ?>