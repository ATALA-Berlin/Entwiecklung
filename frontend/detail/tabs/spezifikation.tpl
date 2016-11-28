{namespace name="frontend/detail/description"}

{* Offcanvas buttons *}
{block name='frontend_detail_description_buttons_offcanvas'}
    <div class="buttons--off-canvas">
        {block name='frontend_detail_description_buttons_offcanvas_inner'}
            <a href="#" title="{"{s name="OffcanvasCloseMenu" namespace="frontend/detail/description"}{/s}"|escape}" class="close--off-canvas">
                <i class="icon--arrow-left"></i>
                {s name="OffcanvasCloseMenu" namespace="frontend/detail/description"}{/s}
            </a>
        {/block}
    </div>
{/block}

{block name="frontend_detail_description"}
<div class="content--description">

	{* Headline *}
	{* {block name='frontend_detail_description_title'}*}
	{* 	<div class="content--title">*}
	{*		{s name="DetailDescriptionHeader"}{/s} *}
	{* <h3>{$sArticle.articleName}</h3>*}
	{* </div>*}
	{* {/block}*}

	{* Product description *}
	{block name='frontend_detail_description_text'}
        <div class="product--description">
            {$sArticle.attr4}
        </div>
	{/block}



	{* Product - Further links *}
	{block name='frontend_detail_description_links'}

		

		{* Links list *}
		{block name='frontend_detail_description_links_list'}
			<ul class="content--list list--unstyled">
				<li class="list--entry">
				{if $sArticle.attr8 == "Fliese"}
					<p> Noch mehr Auswahl finden Sie in unserem  
						<a href="http://atala-shop.de/atala-fliesenkatalog" style="text-decoration: none;color:#DA0830;"> Fliesenkatalog  </a>
					</p>
				{/if}
				</li>
				{foreach $sArticle.sLinks as $information}
					{if $information.supplierSearch}

						{* Vendor landing page link *}
						{block name='frontend_detail_description_links_supplier'}
							<li class="list--entry">
								<a href="{url controller='listing' action='manufacturer' sSupplier=$sArticle.supplierID}"
								   target="{$information.target}"
								   class="content--link link--supplier"
								   title="{"{s name="DetailDescriptionLinkInformation"}{/s}"|escape}">

                                    <i class="icon--arrow-right"></i> {s name="DetailDescriptionLinkInformation"}{/s}
								</a>
							</li>
						{/block}
					{else}

						{* Links which will be added throught the administration *}
						{block name='frontend_detail_description_links_link'}
							{if $sArticle.supplierName !="Atala" }
							<li class="list--entry">
								<a href="{$information.link}"
								   target="{if $information.target}{$information.target}{else}_blank{/if}"
								   class="content--link link--further-links"
								   title="{$information.description}">
                                    <i class="icon--arrow-right"></i> {$information.description}
								</a>
							</li>
							{/if}
						{/block}
					{/if}
				{/foreach}
			</ul>
		{/block}
	{/block}

	

	
</div>
{/block}
