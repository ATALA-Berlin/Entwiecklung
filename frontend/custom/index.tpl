{*extends file="frontend/index/index.tpl"*}

{extends file="parent:frontend/index/index.tpl"} 

{* Custom header *}
{block name="frontend_index_after_body" append}
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="{link file='frontend/_public/src/js/jguery.slick.js'}"></script>
{/block}




{* Main content *}
{block name="frontend_index_content"}
	<div class="custom-page--content content block">

        {* Custom page tab content *}
        {block name="frontend_custom_article"}
            <div class="content--custom">
                {block name="frontend_custom_article_inner"}
                    {* Custom page tab headline *}
                    {block name="frontend_custom_article_headline"}
                        <h1 class="custom-page--tab-headline">{$sCustomPage.description}</h1>
                    {/block}

                    {* Custom page tab inner content *}
                    {block name="frontend_custom_article_content"}
                        {$sContent}
                    {/block}

                    {if $sCustomPage.id==81}
                     {block name="kataloge"}
                       <div class="cataloge_seiten">
                        {include file="frontend/custom/katalog_test.tpl"}
                       </div>
                     {/block}
                     {else}
                     {/if}
                {/block}
            </div>
        {/block}

	</div>
{/block}

{* Sidebar left *}
  {if $sCustomPage.id!=81}
  {block name="frontend_index_content_left"} 
  {include file="frontend/index/sidebar.tpl"}
  {/block}
  {else}
{block name="frontend_index_content_left"} 
  
  {/block}
  {/if}
