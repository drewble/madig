  <?php if(!is_page('Home')) : ?>
  <section id="footer-nav">
    <div class="row">
      <div class="small-12 columns">
        <nav>
          <ul>
            <?php wp_nav_menu(array('menu_order', 'theme_location' => 'footer-nav', 'container' => false, 'items_wrap' => '%3$s') ); ?>
          </ul>
        </nav>
      </div><!-- .small-12 -->
    </div><!-- .row -->
  </section><!-- #footer-nav -->
  
  <footer>
    <div class="row">
      <div class="medium-3 columns show-for-medium-up">
        <div class="line"></div>
      </div>

      <div class="medium-6 columns social">
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

      <div class="medium-3 columns show-for-medium-up">
        <div class="line"></div>
      </div>
    </div><!-- .row -->

    <div class="row colophon">
      <div class="small-12 columns">
        <p>Powered by <a target="_blank" href="http://legendshill.com"><img src="<?php echo get_template_directory_uri(); ?>/_/img/icon-legends.png" alt="Legends Hill" width="30"/></a>
      </div><!-- .small-12 -->
    </div><!-- .colophon -->
  </footer>

<?php endif; //endif is not home page
wp_footer() ?>

</body>
</html>