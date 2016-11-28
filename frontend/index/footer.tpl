{extends file="parent:frontend/index/footer.tpl"}

            {***** Copyright entfernen (wird nach dem Footer über index.tpl wieder eingefügt) *****}
            {block name="frontend_index_shopware_footer_copyright"}
<!--
                <div class="footer--copyright">
                    {s name="IndexCopyright"}{/s}
                </div>
-->
            {/block}

            {***** Shopware Logo entfernen *****}
            {block name="frontend_index_shopware_footer_logo"}
<!--
                <div class="footer--logo">
                    <i class="icon--shopware"></i>
                </div>
-->
            {/block}
