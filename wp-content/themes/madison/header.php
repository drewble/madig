<!doctype html>
<html class="no-js" lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0" />
  <title><?php wp_title( '-', true, 'right' ); echo wp_specialchars( get_bloginfo('name'), 1 ) ?></title>

  <link rel="icon" href="<?php the_field('favicon','option'); ?>"/>
  <?php if(get_field('page_meta_description')) { ?>
  <meta name="description" content="<?php the_field('page_meta_description'); ?>"/>
  <?php }else{ ?>
  <meta name="description" content="<?php the_field('default_meta_description','option'); ?>"/>
  <?php } ?>

  <meta property="og:url" content="http://<?php echo $_SERVER["HTTP_HOST"] . $_SERVER["REQUEST_URI"] ?>"/>
  <meta property="og:title" content="<?php wp_title( '-', true, 'right' ); echo wp_specialchars( get_bloginfo('name'), 1 ) ?>"/>
  <meta property="og:site_name" content="Madison McWilliams"/>

  <?php if(get_field('page_meta_description')) { ?>
  <meta property="og:description" content="<?php the_field('page_meta_description'); ?>"/>
  <?php }else{ ?>
  <meta property="og:description" content="<?php the_field('default_meta_description','option'); ?>"/>
  <?php } ?>
  
  <?php 
  $attachment1 = get_field('default_og_image','option');
  $image1 = wp_get_attachment_image_src($attachment1,'full');
  $attachment2 = get_field('page_og_image');
  $image2 = wp_get_attachment_image_src($attachment2, 'full'); 

  if(get_field('page_og_image')) { ?>
  <meta property="og:image" content="<?php echo $image2[0]; ?>"/>
  <?php }else{ ?>
  <meta property="og:image" content="<?php echo $image1[0]; ?>"/>
  <?php } ?>
  <meta property="og:locale" content="en_us"/>
 
  <?php wp_head(); ?>

  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-36291035-37', 'auto');
    ga('send', 'pageview');

  </script>
</head>

<body <?php body_class(); ?>>

  <?php if(!is_page('Home')){ ?>
  <nav class="nav-collapse" id="mobile-menu">
    <ul>
      <?php wp_nav_menu(array('menu_order', 'theme_location' => 'footer-nav', 'container' => false, 'items_wrap' => '%3$s') ); ?>
    </ul>
  </nav>

  
  <header>
    <div class="row">
      <div class="small-9 large-centered columns text-center">
        <a href="<?php echo home_url(); ?>">
          <img src="<?php echo get_template_directory_uri(); ?>/_/img/logo.png" alt="Madison McWilliams"/>
        </a>
      </div><!-- .small-12 -->
      <div class="small-2 columns show-for-medium-down">
        <a href="#" class="nav-toggle" id="nav-toggle" aria-hidden="false">
          <span>Menu</span>
        </a>
      </div>
    </div><!-- .row -->
  </header>
  <?php } ?>