<?php
global $theretailer_theme_options;
?>

<?php if ( (!$theretailer_theme_options['dark_footer_all_site']) || ($theretailer_theme_options['dark_footer_all_site'] == 0) ) { ?>

	<?php if ( is_active_sidebar( 'widgets_dark_footer' ) ) : ?>        
        
        <div class="gbtr_dark_footer_wrapper">        
            <div class="container_12">
                <?php dynamic_sidebar('widgets_dark_footer'); ?>
            </div>             
        </div>        
    
    <?php else : ?>
    
        <div class="gbtr_dark_footer_no_widgets">
            <div class="container_12">
                <div class="grid_3">
                    <img class="logo_footer" src="<?php echo get_template_directory_uri(); ?>/images/logo_footer.png" />
                    </div>
                <div class="grid_9">
                    <a href="" target="_blank"><img class="fb" src="<?php echo get_template_directory_uri(); ?>/images/fb.png" /></a>
                    <a href="" target="_blank"><img class="tw" src="<?php echo get_template_directory_uri(); ?>/images/tw.png" /></a>
                </div>
            </div>
        </div>
    
    <?php endif; ?>

<?php } ?>