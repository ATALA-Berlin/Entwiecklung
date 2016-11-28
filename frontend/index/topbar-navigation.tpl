<div class="top-bar">



	<div class="container block-group">

		{* Top bar navigation *}
		{block name="frontend_index_top_bar_nav"}

			<nav class="top-bar--navigation block" role="menubar">

				{action module=widgets controller=index action=shopMenu}

				{* Article Compare *}
				{block name='frontend_index_navigation_inline'}
					{if {config name="compareShow"}}
						<div class="navigation--entry entry--compare is--hidden" role="menuitem" aria-haspopup="true" data-drop-down-menu="true">
							{block name='frontend_index_navigation_compare'}
								{action module=widgets controller=compare}
							{/block}
						</div>
					{/if}
				{/block}

				{* Service / Support drop down *}
				{block name="frontend_index_checkout_actions_service_menu"}

				<div class="clear"style="clear:both;"></div>
    
    <div class="point--of--sale">
        <div class="pos--lieferung"style="wrap-margin:10px;margin-left:20px;">
        	<i class="icon--truck"></i><span>Versandkostenfrei ab 10 € Bestellwert</span></div>

        <div class="pos--selbstabholung" style="position:left;"><i class="icon--location"></i><span>Selbstabholung in unserer Filiale in Berlin-Weißensee</span></div>
        <div class="pos--hotline" style="wrap-margin:10px;"><i class="icon--phone"></i><span>Service-Hotline: <strong>030 - 962 41 171</strong></span></div>
    </div>
                
<!--div class="point--of--sale" style="float:left;border: 1px solid #999;">
        <div class="pos"style="margin-left:20px;">
        	<i class="icon--truck"></i><span>Versandkostenfrei ab 10 € Bestellwert</span></div>

        <div class="pos" style=""><i class="icon--location"></i><span>Selbstabholung in unserer Filiale in Berlin-Weißensee</span></div>
        <div class="pos" style=""><i class="icon--phone"></i><span>Service-Hotline: <strong>030 - 962 41 171</strong></span></div>
    </div-->


				{/block}
			</nav>
		{/block}
	</div>
</div>