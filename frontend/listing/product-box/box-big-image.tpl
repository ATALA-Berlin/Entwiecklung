{extends file="frontend/listing/product-box/box-basic.tpl"}

{namespace name="frontend/listing/box_article"}

{block name='frontend_listing_box_article_description'}{/block}


{block name='frontend_listing_box_article_picture'}
{if $sArticle.swag_attr21 != null && $sArticle.swag_attr21 != ""}

{assign var="classname" value="{1|rand:1000}"}
{assign var="clnamehauptbild" value="'.hauptbild{$classname}'"}
{assign var="clnamekaruselbild" value="'.karuselbild{$classname}'"}




			{assign var="bilderstring" value ="{$sArticle.swag_attr21}"}
			{assign var="bildersarray" value =","|explode:$bilderstring}
			{assign var="zaehler" value=0}
			{assign var="anzahl" value=0}
			
			{foreach from=$bildersarray item=array }

					{assign var="anzahl" value=$anzahl+1}
			{/foreach}
			
	<div class="product--image" >		
			<a href="{$sArticle.linkDetails|rewrite:$sArticle.articleName}"
       title="{$sArticle.articleName|escape}"
       class="product--image"   >
			
			
			
			<div class="slider hauptbild{$classname}"  >
				
					{foreach from=$bildersarray item=array }
			
					<div>
					<img src="http://atala-shop.de/media/image/thumbnail/{$array}_720x600.jpg"  style=" display: inline; max-height: 200px;"   />
					</div>
					
				
					{/foreach}
					
			</div>



			

			

			<div class="slider karuselbild{$classname}"  >
				
					{foreach from=$bildersarray item=array2 }
			
				
					<div>
					<img src="http://atala-shop.de/media/image/thumbnail/{$array2}_57x57.jpg" style=" display: inline; max-height: 40px;"/>
					</div>
					
					
					{/foreach}
					
			</div>
	</a>		
	</div>	
			
<script type="text/javascript">
	

	
	$({$clnamehauptbild}).slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: true,
		asNavFor: {$clnamekaruselbild},
		responsive: [
		{
			breakpoint: 1024,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1,
				infinite: true,
				dots: false
			}
		},
		{
			breakpoint: 600,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1
			}
		},
		{
			breakpoint: 480,
			settings: {
				 settings: "unslick" // destroys slick
			}
			
			
			
		}
		// You can unslick at a given breakpoint now by adding:
		// settings: "unslick"
		// instead of a settings object
		]
		
		
		
	});
	
	$({$clnamekaruselbild}).slick({
		slidesToShow: 3,
		slidesToScroll: 1,
		asNavFor: {$clnamehauptbild},
		dots: false,
		centerMode: true,
		focusOnSelect: true,
		responsive: [
		{
			breakpoint: 1024,
			settings: {
				slidesToShow: 3,
				slidesToScroll: 1,
				infinite: true,
				dots: false
			}
		},
		{
			breakpoint: 600,
			settings: {
				slidesToShow: 3,
				slidesToScroll: 1
			}
		},
		{
			breakpoint: 480,
			settings: {
				 settings: "unslick" // destroys slick
			}
			
			
			
		}
		// You can unslick at a given breakpoint now by adding:
		// settings: "unslick"
		// instead of a settings object
		]
	});

	</script>
	
{else}		
	 <a href="{$sArticle.linkDetails|rewrite:$sArticle.articleName}"
       title="{$sArticle.articleName|escape}"
       class="product--image">
        {block name='frontend_listing_box_article_image_element'}
            <span class="image--element">
            {block name='frontend_listing_box_article_image_media'}
                <span class="image--media">

                    {$desc = $sArticle.articleName|escape}

                    {if isset($sArticle.image.thumbnails)}

                        {if $sArticle.image.description}
                            {$desc = $sArticle.image.description|escape}
                        {/if}

                        {block name='frontend_listing_box_article_image_picture_element'}
                            <img srcset="{$sArticle.image.thumbnails[1].sourceSet}"
                                 alt="{$desc}"
                                 title="{$desc|truncate:25:""}" />
                        {/block}
                    {else}
                        <img src="{link file='frontend/_public/src/img/no-picture.jpg'}"
                             alt="{$desc}"
                             title="{$desc|truncate:25:""}" />
                    {/if}
                </span>
            {/block}
        </span>
        {/block}
    </a>
		
{/if}	


	
	
{/block}
		