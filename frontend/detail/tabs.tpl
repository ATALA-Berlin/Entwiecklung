{* Tab navigation for the product detail page *}
{block name="frontend_detail_tabs"}
    <div class="tab-menu--product">
        {block name="frontend_detail_tabs_inner"}

            {* Tab navigation *}
            {block name="frontend_detail_tabs_navigation"}
                <div class="tab--navigation">
                    {block name="frontend_detail_tabs_navigation_inner"}

                        {* Description tab *}
                        {block name="frontend_detail_tabs_description"}
                            <a href="#" class="tab--link" title="{s name='DetailTabsDescription'}{/s}">{s name='DetailTabsDescription'}{/s}</a>
                        {/block}
						
					{if $sArticle.attr4 }
					{* Reiter Produktdaten *}
                        {block name="frontend_detail_tabs_spezifikation"}
                            <a href="#" class="tab--link" title="{s name='DetailTabsSpezifikation'}Produktdaten{/s}">{s name='DetailTabsSpezifikation'}Produktdaten{/s}</a>
                        {/block}
					{/if}
					
					
					{if $sArticle.attr5 }
					{* Reiter Lieferumfang *}
                        {block name="frontend_detail_tabs_spezifikation"}
                            <a href="#" class="tab--link" title="{s name='DetailTabsLieferumfang'}Lieferumfang{/s}">{s name='DetailTabsLieferumfang'}Lieferumfang{/s}</a>
                        {/block}
					{/if}
					
					

                        {* Rating tab *}
                        {block name="frontend_detail_tabs_rating"}
                            <a href="#" class="tab--link" title="{s name='DetailTabsRating'}{/s}">
                                {s name='DetailTabsRating'}{/s}
                                {block name="frontend_detail_tabs_navigation_rating_count"}
                                    <span class="product--rating-count">{$sArticle.sVoteAverage.count}</span>
                                {/block}
                            </a>
                        {/block}
                    {/block}
                </div>
            {/block}

            {* Content list *}
            {block name="frontend_detail_tabs_content"}
                <div class="tab--container-list">
                    {block name="frontend_detail_tabs_content_inner"}

                        {* Description container *}
                        {block name="frontend_detail_tabs_content_description"}
                            <div class="tab--container">
                                {block name="frontend_detail_tabs_content_description_inner"}

                                    {* Description title *}
                                    {block name="frontend_detail_tabs_content_description_title"}
                                        <div class="tab--header">
                                            {block name="frontend_detail_tabs_content_description_title_inner"}
                                                <a href="#" class="tab--title" title="{s name='DetailTabsDescription'}Produktdaten{/s}">{s name='DetailTabsDescription'}Produktdaten{/s}</a>
                                            {/block}
                                        </div>
                                    {/block}

                                    {* Description preview *}
                                    {block name="frontend_detail_tabs_description_preview"}
                                        <div class="tab--preview">
                                            {block name="frontend_detail_tabs_content_description_preview_inner"}
                                                {$sArticle.description_long|strip_tags|truncate:100:'...'}<a href="#" class="tab--link" title="{s name="PreviewTextMore"}{/s}">{s name="PreviewTextMore"}{/s}</a>
                                            {/block}
                                        </div>
                                    {/block}

                                    {* Description content *}
                                    {block name="frontend_detail_tabs_content_description_description"}
                                        <div class="tab--content">
                                            {block name="frontend_detail_tabs_content_description_description_inner"}
                                                {include file="frontend/detail/tabs/description.tpl"}
                                            {/block}
                                        </div>
                                    {/block}

                                {/block}
                            </div>
                        {/block}
					{************Reiter Produktdaten*************}
					{* spezifikation container *}
					{if $sArticle.attr4 }
                        {block name="frontend_detail_tabs_content_description"}
                            <div class="tab--container">
                                {block name="frontend_detail_tabs_content_spezifikation_inner"}

                                    {* spezifikation title *}
                                    {block name="frontend_detail_tabs_content_spezifikation_title"}
                                        <div class="tab--header">
                                            {block name="frontend_detail_tabs_content_spezifikation_title_inner"}
                                                <a href="#" class="tab--title" title="{s name='DetailTabsSpezifikation'}Produktdaten{/s}">{s name='DetailTabsSpezifikation'}Produktdaten{/s}</a>
                                            {/block}
                                        </div>
                                    {/block}

                                    {* spezifikation preview *}
                                    {block name="frontend_detail_tabs_spezifikation_preview"}
                                        <div class="tab--preview">
                                            {block name="frontend_detail_tabs_content_spezifikation_preview_inner"}
                                                {$sArticle.attr4|strip_tags|truncate:100:'...'}<a href="#" class="tab--link" title="{s name="PreviewTextMore"}{/s}">{s name="PreviewTextMore"}{/s}</a>
                                            {/block}
                                        </div>
                                    {/block}

                                    {* spezifikation content *}
                                    {block name="frontend_detail_tabs_content_spezifikation_description"}
                                        <div class="tab--content">
                                            {block name="frontend_detail_tabs_content_description_description_inner"}
                                                {include file="frontend/detail/tabs/spezifikation.tpl"}
                                            {/block}
                                        </div>
                                    {/block}

                                {/block}
                            </div>
                        {/block}
					{/if}
					{************Reiter Produktdaten*************}
						
					{***********Reiter Lieferumfang**************}
					{if $sArticle.attr5 }
					{* spezifikation container *}
                        {block name="frontend_detail_tabs_content_description"}
                            <div class="tab--container">
                                {block name="frontend_detail_tabs_content_spezifikation_inner"}

                                    {* spezifikation title *}
                                    {block name="frontend_detail_tabs_content_spezifikation_title"}
                                        <div class="tab--header">
                                            {block name="frontend_detail_tabs_content_spezifikation_title_inner"}
                                                <a href="#" class="tab--title" title="{s name='DetailTabsLieferumfang'}Lieferumfang{/s}">{s name='DetailTabsLieferumfang'}Lieferumfang{/s}</a>
                                            {/block}
                                        </div>
                                    {/block}

                                    {* spezifikation preview *}
                                    {block name="frontend_detail_tabs_spezifikation_preview"}
                                        <div class="tab--preview">
                                            {block name="frontend_detail_tabs_content_spezifikation_preview_inner"}
                                                {$sArticle.attr5|strip_tags|truncate:100:'...'}<a href="#" class="tab--link" title="{s name="PreviewTextMore"}{/s}">{s name="PreviewTextMore"}{/s}</a>
                                            {/block}
                                        </div>
                                    {/block}

                                    {* spezifikation content *}
                                    {block name="frontend_detail_tabs_content_spezifikation_description"}
                                        <div class="tab--content">
                                            {block name="frontend_detail_tabs_content_description_description_inner"}
                                                {include file="frontend/detail/tabs/lieferumfang.tpl"}
                                            {/block}
                                        </div>
                                    {/block}

                                {/block}
                            </div>
                        {/block}
					{/if}
					{************Reiter Lieferumfang*************}
						
						

                        {* Rating container *}
                        {block name="frontend_detail_tabs_content_rating"}
                            {if !{config name=VoteDisable}}
                                <div class="tab--container">
                                    {block name="frontend_detail_tabs_content_rating_inner"}

                                        {* Rating title *}
                                        {block name="frontend_detail_tabs_rating_title"}
                                            <div class="tab--header">
                                                {block name="frontend_detail_tabs_rating_title_inner"}
                                                    <a href="#" class="tab--title" title="{s name='DetailTabsRating'}{/s}">{s name='DetailTabsRating'}{/s}</a>
                                                    {block name="frontend_detail_tabs_rating_title_count"}
                                                        <span class="product--rating-count">{$sArticle.sVoteAverage.count}</span>
                                                    {/block}
                                                {/block}
                                            </div>
                                        {/block}

                                        {* Rating preview *}
                                        {block name="frontend_detail_tabs_rating_preview"}
                                            <div class="tab--preview">
                                                {block name="frontend_detail_tabs_rating_preview_inner"}
                                                    {s name="RatingPreviewText"}{/s}<a href="#" class="tab--link" title="{s name="PreviewTextMore"}{/s}">{s name="PreviewTextMore"}{/s}</a>
                                                {/block}
                                            </div>
                                        {/block}

                                        {* Rating content *}
                                        {block name="frontend_detail_tabs_rating_content"}
                                            <div class="tab--content">
                                                {block name="frontend_detail_tabs_rating_content_inner"}
                                                    {include file="frontend/detail/tabs/comment.tpl"}
                                                {/block}
                                            </div>
                                        {/block}

                                    {/block}
                                </div>
                            {/if}
                        {/block}

                    {/block}
                </div>
            {/block}

        {/block}
    </div>
{/block}