{extends file="parent:frontend/listing/manufacturer.tpl"}

{block name="frontend_listing_index_layout_variables"}

    {* Count of available product pages *}
    {$pages = ceil($sNumberArticles / $criteria->getLimit())}

    {* Controller url for the found products counter *}
    {$countCtrlUrl = "{url module="widgets" controller="listing" action="listingCount" params=$ajaxCountUrlParams fullPath}"}

    {* Layout for the product boxes *}
    {$productBoxLayout = 'minimal'}
{/block}