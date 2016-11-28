{namespace name="frontend/index/menu_footer"}

{* Service hotline *}
{block name="frontend_index_footer_column_service_hotline"}
    <div class="footer--column column--hotline is--first block">
        <div class="column--headline">{s name="sFooterServiceHotlineHead"}{/s}</div>

		{block name="frontend_index_footer_column_service_hotline_content"}
			<div class="column--content">
				<p class="column--desc">{s name="sFooterServiceHotline"}{/s}</p>
			</div>
		{/block}
{******************social media icons****************}
				<div class="socials"style="border:none;">
				   <div style="padding-bottom:13px;">
<!--					 	 <span class="head" style="marin-top:10px;border-bottom: 1px solid #ccc;padding-left:10px;">FOLGE UNS</span>-->
					 	 <span class="column--headline">Folge uns</span>
				   </div>
				        <div id="facebook" style="border:none;">
				        <a  id="social" href="www.facebook.com/atalashop" target="_blank" style="float:left;width:42px;">
				            <img src="/media/social_icons/Facebook_icon.svg" style="width: 31px; height: 31px; float:left;margin-top:3px;"/></a>
				        </div>

				        <div class="google_plus" style="border:none;">
				        <a  id="social" href="https://plus.google.com/u/0/+AtalashopDe2016/posts" target="_blank" style="float:left; width:42px;"><img src="/media/social_icons/g_plus_icon.svg" style="width: 31px; height:31px; float:left;margin-top:3px;"/></a>
				        </div>
				       
				        <div class="pinterest" style="border:none;">
				        <a  id="social" href="https://de.pinterest.com/atalashop/" target="_blank" style="float:left; width:42px;"><img src="/media/social_icons/Pinterest_icon.svg" style="width: 31px; height: 31px; float:left;margin-top:3px;"/></a>
				        </div>

				        <div class="youtobe" style="border:none;">
				        <a  id="social" href="https://www.youtube.com/channel/UCDqHU_1zq8D4OwtLUx3AYig" target="_blank" style="float:left;width:42px;">
				            <img src="/media/social_icons/youtube_icon.svg" style="width: 31px; height: 31px; margin-top:3px;"/></a>
				        </div>
<!--				       </a>-->
				       
				       <div class="twitter" style="border:none;">
				        <a  id="social" href="https://twitter.com/ATALA_Shop" target="_blank" style="float:left;width:42px">
				            <img src="/media/social_icons/twitter_icon.svg" style="width: 31px; height: 31px; margin-top:3px;"/></a>
				        </div>
<!--				       </a>-->
                    
				        <div class="instagramm" style="border:none;">
				        <a  id="social" href="https://www.instagram.com/atala_living/" target="_blank" style="float:left;width:42px">
				            <img src="/media/social_icons/inst_icon.svg" style="width: 31px; height: 31px; margin-top:3px;"/></a>
				        </div>
<!--				       </a>-->


				    </div>

{***************************************}
    </div>
{/block}

{block name="frontend_index_footer_column_service_menu"}
	<div class="footer--column column--menu block">
		<div class="column--headline">{s name="sFooterShopNavi1"}{/s}</div>

		{block name="frontend_index_footer_column_service_menu_content"}
			<nav class="column--navigation column--content">
				<ul class="navigation--list" role="menu">
					{block name="frontend_index_footer_column_service_menu_before"}{/block}
					{foreach $sMenu.gBottom as $item}

                        {block name="frontend_index_footer_column_service_menu_entry"}
                            <li class="navigation--entry" role="menuitem">
                                <a class="navigation--link" href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}" title="{$item.description|escape}"{if $item.target} target="{$item.target}"{/if}>
                                    {$item.description}
                                </a>

                                {* Sub categories *}
                                {if $item.childrenCount > 0}
                                    <ul class="navigation--list is--level1" role="menu">
                                        {foreach $item.subPages as $subItem}
                                            <li class="navigation--entry" role="menuitem">
                                                <a class="navigation--link" href="{if $subItem.link}{$subItem.link}{else}{url controller='custom' sCustom=$subItem.id title=$subItem.description}{/if}" title="{$subItem.description|escape}"{if $subItem.target} target="{$subItem.target}"{/if}>
                                                    {$subItem.description}
                                                </a>
                                            </li>
                                        {/foreach}
                                    </ul>
                                {/if}
                            </li>
                        {/block}
                    {/foreach}

					{block name="frontend_index_footer_column_service_menu_after"}{/block}
				</ul>
			</nav>
		{/block}
	</div>
{/block}

{block name="frontend_index_footer_column_information_menu"}
	<div class="footer--column column--menu block">
		<div class="column--headline">{s name="sFooterShopNavi2"}{/s}</div>

		{block name="frontend_index_footer_column_information_menu_content"}
			<nav class="column--navigation column--content">
				<ul class="navigation--list" role="menu">
					{block name="frontend_index_footer_column_information_menu_before"}{/block}
						{foreach $sMenu.gBottom2 as $item}

							{block name="frontend_index_footer_column_information_menu_entry"}
								<li class="navigation--entry" role="menuitem">
                                    <a class="navigation--link" href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}" title="{$item.description|escape}"{if $item.target} target="{$item.target}"{/if}>
                                        {$item.description}
									</a>

                                    {* Sub categories *}
                                    {if $item.childrenCount > 0}
                                        <ul class="navigation--list is--level1" role="menu">
                                            {foreach $item.subPages as $subItem}
                                                <li class="navigation--entry" role="menuitem">
                                                    <a class="navigation--link" href="{if $subItem.link}{$subItem.link}{else}{url controller='custom' sCustom=$subItem.id title=$subItem.description}{/if}" title="{$subItem.description|escape}"{if $subItem.target} target="{$subItem.target}"{/if}>
                                                        {$subItem.description}
                                                    </a>
                                                </li>
                                            {/foreach}
                                        </ul>
                                    {/if}
								</li>
							{/block}
						{/foreach}
					{block name="frontend_index_footer_column_information_menu_after"}{/block}
				</ul>
			</nav>
		{/block}
	</div>
{/block}

{block name="frontend_index_footer_column_newsletter"}
	<div class="footer--column column--newsletter is--last block">
		<div class="column--headline">{s name="sFooterNewsletterHead"}{/s}</div>

		{block name="frontend_index_footer_column_newsletter_content"}
			<div class="column--content">
				<p class="column--desc">
					{********text oben newsletter ausgeschaltet***}
					{s name="sFooterNewsletter"}{/s}
				</p>

				{block name="frontend_index_footer_column_newsletter_form"}
					<form class="newsletter--form" action="{url controller='newsletter'}" method="post">
						<input type="hidden" value="1" name="subscribeToNewsletter" />

						{block name="frontend_index_footer_column_newsletter_form_field"}
							<input type="email" name="newsletter" class="newsletter--field" placeholder="{s name="IndexFooterNewsletterValue"}{/s}" />
						{/block}

						{block name="frontend_index_footer_column_newsletter_form_submit"}
							<button type="submit" class="newsletter--button btn">
								<i class="icon--mail"></i> <span class="button--text">{s name='IndexFooterNewsletterSubmit'}{/s}</span>
							</button>
						{/block}
					</form>
				{/block}
{**************************  Zahlungsmethoden_logo******************}

 <div class="bezahlungsarten" style="margin-top: 13px;">
<!--          <span class="head" style="border:none;marin-top:10px;border-bottom: 1px solid #ccc;">Zahlungsmethoden</span>-->
          <span class="column--headline" >Zahlungsmethoden</span>
         <div class="logos_bezahl" style="max-width:311px;padding-top:13px;padding-right: 10px;">
           <img src="/media/image/24/22/bb/zahlungsmethoden_logos.png"/>
         </div><!--ende logos_bezahlt-->
        </div>
{*******************************************}
			</div>
		{/block}
	</div>
{/block}