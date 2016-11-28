<ul id="detail_menu">




	{block name='frontend_detail_actions_contact'}
	<li>
		<a 	href="{$sInquiry}" rel="nofollow" class="action--link link--notepad" title="{s name='DetailLinkContact'}{/s}">
			{se name="DetailLinkContact"}{/se} <i class="icon--help"></i> 
		</a>
	</li>
	{/block}


	{block name='frontend_detail_actions_notepad'}
	<li>
		<a  href="{url controller='note' action='add' ordernumber=$sArticle.ordernumber}" class="action--link link--notepad" rel="nofollow" title="{s name='DetailLinkNotepad'}{/s}">
			{se name="DetailLinkNotepad"}{/se} <i class="icon--pencil"></i> 
		</a>
	</li>
	{/block}
	

	
	{block name='frontend_detail_actions_review'}
	
	{if !{config name=VoteDisable}}
	<li>
		<a href="#content--product-reviews" data-show-tab="true" class="action--link link--publish-comment" rel="nofollow" title="{"{s name='DetailLinkReview'}{/s}"|escape}">
			{s name="DetailLinkReviewShort"}{/s} <i class="icon--star"></i>
		</a>
	</li>
	{/if}
	
	{/block}


	
	

	

		
	
	{block name='frontend_detail_blog_beiträge'}
	
	<li>
		<a href="https://atala-shop.de/blog" class="action--link link--notepad"  title="zum Blog">Zum Blog <i class="icon--book2"></i></a>
	</li>
	
	{/block}
	
	
	
	
</ul>