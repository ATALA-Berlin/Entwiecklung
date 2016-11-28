<?php

namespace Shopware\Themes\AtalaShop;

use Shopware\Components\Form as Form;

class Theme extends \Shopware\Components\Theme
{
    protected $extend = 'Responsive';

    protected $name = <<<'SHOPWARE_EOD'
Atala
SHOPWARE_EOD;

    protected $description = <<<'SHOPWARE_EOD'
Atala Work Theme
SHOPWARE_EOD;

    protected $author = <<<'SHOPWARE_EOD'
Atala Team
SHOPWARE_EOD;

    protected $license = <<<'SHOPWARE_EOD'
free
SHOPWARE_EOD;

    public function createConfig(Form\Container\TabContainer $container)
    {
    }
		
	 protected $javascript = [

		'src/js/jquery.navigationscrolled.js',
		'src/js/jquery.slick.js',
        'src/js/masonry.pkgd.js'
       
    ];
		
		/** @var array Defines the files which should be compiled by the javascript compressor */
protected $css = array(
    'src/css/my-styles.css'
  
);
}