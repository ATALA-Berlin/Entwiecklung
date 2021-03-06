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
					
				{/block}
			</nav>
		{/block}
	</div>
</div>