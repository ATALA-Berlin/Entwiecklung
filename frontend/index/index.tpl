{extends file="parent:frontend/index/index.tpl"} 



{* Custom header *}
{block name="frontend_index_after_body" append}
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
{*<script type="text/javascript" src="{link file='frontend/_public/src/js/jguery.slick.js'}"></script>*}
{/block}


{block name="service_menu_custom"}
{include file='frontend/index/service.tpl'}
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




{***** Einfügen von Copyright UNTER dem Footer *****} 
{block name="frontend_index_footer"}
<footer class="footer-main">
    <div class="container">
        {block name="frontend_index_footer_container"} {include file='frontend/index/footer.tpl'} {/block}
    </div>
    <div class="footer--copyright">
        {s name="IndexCopyrightATALA"}{/s}
    </div>
</footer>
{/block}