{extends file='frontend/index/index.tpl'}

{block name='frontend_index_header'}
	{include file='frontend/listing/header.tpl'}
{/block}

{block name='frontend_index_content_left'}
    {include file='frontend/listing/sidebar.tpl'}
{/block}

{* Main content *}
{block name='frontend_index_content'}
	<div class="content listing--content">

		{* Banner *}
		{block name="frontend_listing_index_banner"}
            {if !$hasEmotion}
			    {include file='frontend/listing/banner.tpl'}
			{/if}
		{/block}

		{* Category headline *}
		{block name="frontend_listing_index_text"}
			{if !$hasEmotion}
				{include file='frontend/listing/text.tpl'}
			{/if}
		{/block}

		{*Listing Platz vorher*************}
		
		{* Define all necessary template variables for the listing *}
		{block name="frontend_listing_index_layout_variables"}

            {* Count of available product pages *}
            {$pages = ceil($sNumberArticles / $criteria->getLimit())}

            {* Controller url for the found products counter *}
            {$countCtrlUrl = "{url module="widgets" controller="listing" action="listingCount" params=$ajaxCountUrlParams fullPath}"}

            {* Layout for the product boxes *}
            {$productBoxLayout = 'basic'}

            {if $sCategoryContent.productBoxLayout !== null &&
                $sCategoryContent.productBoxLayout !== 'extend'}
                {$productBoxLayout = $sCategoryContent.productBoxLayout}
            {/if}
		{/block}

		{* Listing *}
		{block name="frontend_listing_index_listing"}
			{include file='frontend/listing/listing.tpl'}
		{/block}

		{****************Text für SEO***********************}
		{block name="frontend_listing_text"}
		{if $sCategoryContent.cmsheadline}
			<div class="cat_text">
				<div class="inner_container">
				    <h1>{$sCategoryContent.cmsheadline}</h1>
				    
				    {if $sCategoryContent.cmstext}
				    	{$sCategoryContent.cmstext}
				    {/if}
			    </div>
			</div>
		{/if}
		{/block}

		{***************************************}



		{*Listing Platz nacher*************}
		{* Topseller *}
		{block name="frontend_listing_index_topseller"}
			{if !$hasEmotion && {config name=topSellerActive}}
				{action module=widgets controller=listing action=top_seller sCategory=$sCategoryContent.id}
			{/if}
		{/block}
		{**********************************}

		{* Tagcloud *}
		{block name="frontend_listing_index_tagcloud"}
			{if {config name=show namespace=TagCloud }}
				{action module=widgets controller=listing action=tag_cloud sController=listing sCategory=$sCategoryContent.id}
			{/if}
		{/block}
	</div>
{/block}

{* Sidebar right *}
{block name='frontend_index_content_right'}{/block}