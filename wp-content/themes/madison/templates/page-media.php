<?php 
/*
Template Name: Media Page
*/

get_header(); the_post(); 

	$videos = get_field('videos'); 
  if($videos) : ?>
  <section class="videos content-area">
    

    <?php foreach($videos as $video) : 
    $url = $video['youtube_url'];
    if (preg_match('/youtube\.com\/watch\?v=([^\&\?\/]+)/', $url, $id)) {
      $values = $id[1];
    } else if (preg_match('/youtube\.com\/embed\/([^\&\?\/]+)/', $url, $id)) {
      $values = $id[1];
    } else if (preg_match('/youtube\.com\/v\/([^\&\?\/]+)/', $url, $id)) {
      $values = $id[1];
    } else if (preg_match('/youtu\.be\/([^\&\?\/]+)/', $url, $id)) {
      $values = $id[1];
    }
    else if (preg_match('/youtube\.com\/verify_age\?next_url=\/watch%3Fv%3D([^\&\?\/]+)/', $url, $id)) {
        $values = $id[1];
    } else {   
    // not an youtube video
    }
          
    $gdata_url = "http://gdata.youtube.com/feeds/api/videos/". $values;
    $doc = new DOMDocument;
    $doc->load($gdata_url);
    $vid_title = $doc->getElementsByTagName("title")->item(0)->nodeValue;

     ?>

    <div class="row video">
    	<div class="small-12 columns">

    		<?php 
    		$url = 'http://img.youtube.com/vi/'.$values.'/maxresdefault.jpg';
    		$exists = remoteFileExists($url);
				if ($exists) { ?>

				<a class="video fancybox-media" target="_blank" href="http://www.youtube.com/embed/<?php echo $values; ?>" style="background-image: url('http://img.youtube.com/vi/<?php echo $values ?>/maxresdefault.jpg');">
	        <div class="box">
	         

	          <div class="overlay">
	            <span class="icon-play"></span>
	          </div><!-- .overlay -->

	          
	        </div><!-- .box -->
	      </a>   
				    
				<?php } else { ?>

				<a class="fancybox-media" target="_blank" href="http://www.youtube.com/embed/<?php echo $values; ?>" style="background-image: url('http://img.youtube.com/vi/<?php echo $values ?>/hqdefault.jpg');">
	        <div class="box">

	          <div class="overlay">
	            <span class="icon-play"></span>
	          </div><!-- .overlay -->   
	        </div><!-- .box -->
	      </a>   
				    
				<?php } ?>	 

				<h2><?php echo $video['title']; ?></h2>     

	     </div><!-- .small-12 columns -->
    </div><!-- .row -->
      

    <?php endforeach; ?>

    
  </section><!-- .video-list -->
  <?php endif; ?>

	<section class="instagram content-area">

		<div class="row">
      <div class="medium-1 small-3 columns">
        <a target="_blank" href="<?php the_field('instagram_link','option'); ?>">
          <span class="icon icon-instagram"></span>
          <span class="mls">icon-instagram</span>
        </a>
      </div>

      <div class="medium-11 small-9 columns instagram-wrapper">
        <div id="instafeed"></div>
      </div>
    </div><!-- .row -->


	</section><!-- .instagram -->

	<section class="gallery content-area">

  <?php $images = get_field('photo_gallery');

  if( $images ): ?>
    <div class="row">
    <?php foreach( $images as $image ): ?>
      <a class="large-2 medium-3 small-6 columns image fancybox end image" rel="gallery" href="<?php echo $image['sizes']['large']; ?>">
        <img src="<?php echo $image['sizes']['thumbnail']; ?>" alt="<?php echo $image['alt']; ?>" />         
      </a>
    <?php endforeach; ?>
    </div><!-- .row -->
  <?php endif; ?>

	</section><!-- .gallery -->

<?php get_footer() ?>