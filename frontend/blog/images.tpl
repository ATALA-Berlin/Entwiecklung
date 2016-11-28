{* Article picture *}
{if $sArticle.preview.thumbnails[0]}
	<div class="blog--detail-image-container block">

		{* Main Image *}
		{block name='frontend_blog_images_main_image'}

		    {$alt = $sArticle.title|escape}

            {if $sArticle.preview.description}
                {$alt = $sArticle.preview.description|escape}
            {/if}

		{****blog vorschaubild ausschalzten_31.08_Konstantin****}
		
		{/block}

		{* Thumbnails *}
		{if $sArticle.media}
			{block name='frontend_blog_images_thumbnails'}
				<div class="blog--detail-thumbnails block">
					{foreach $sArticle.media as $sArticleMedia}

						{$alt = $sArticle.title|escape}

						{if $sArticleMedia.description}
							{$alt = $sArticleMedia.description}
						{/if}

						{if !$sArticleMedia.preview}
							<a href="{$sArticleMedia.thumbnails[2].source}"
							   data-lightbox="true"
                               class="blog--thumbnail panel has--border is--rounded block"
							   title="{s name="BlogThumbnailText" namespace="frontend/blog/detail"}{/s}: {$alt}">

                               <img srcset="{$sArticleMedia.thumbnails[0].sourceSet}"
                                    class="blog--thumbnail-image"
                                    alt="{s name="BlogThumbnailText" namespace="frontend/blog/detail"}{/s}: {$alt}"
                                    title="{s name="BlogThumbnailText" namespace="frontend/blog/detail"}{/s}: {$alt|truncate:25:""}" />
							</a>
						{/if}
					{/foreach}
				</div>
			{/block}
		{/if}
	</div>
{/if}