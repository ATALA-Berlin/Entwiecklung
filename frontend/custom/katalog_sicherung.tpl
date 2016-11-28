 <script type="text/javascript">
        $(function($) {
            $("#carousel").pdfSlider();
        });
    </script>

    <div class="custom-page--content content block">

        {* Custom page tab content *}
        {block name="frontend_custom_article"}
            <div class="content--custom">
                {block name="frontend_custom_article_inner"}
                    {* Custom page tab headline *}
                    {block name="frontend_custom_article_headline"}
                        <h1 class="custom-page--tab-headline">Katalog Seite</h1>
                    {/block}


               <div class="banner-slider--container image-slider--container">                
                     <div class="test">
                    

                    {block name='frontend_listing_normal_banner'}
                      {foreach $banner.thumbnails as $image}
                            <a href="{$sBanner.link}" class="banner--link" {if $sBanner.link_target}target="{$sBanner.link_target}"{/if} title="{$sBanner.description|escape}">
                                <picture>
                                    <source srcset="{$sBanner.media.thumbnails[0].sourceSet}" media="(min-width: 48em)">

                                    <img srcset="{$sBanner.media.thumbnails[0].sourceSet}" alt="{$sBanner.description|escape}" class="banner--img" />
                                </picture>
                            </a>
                        {/foreach}
                    {/block}
                     </div>
                    {* Custom page tab inner content *}
                    {*block name="frontend_custom_article_content"*}
                        {*$sContent*}
                    {*/block*}
                {/block}
            </div>
        {/block}

    </div>
</div>

