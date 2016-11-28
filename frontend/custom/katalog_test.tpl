

  <style type="text/css">
     body {
      margin: 0;
      padding: 0;
      background-color:#000;

    }

.variable slider{
     background-position: center;
     float:left;
     width: 900px;
}

    .pdf{
     margin: 10px;
     padding:0px;
     background-color:#000;
     width: 850px;
    }

    * {
      box-sizing: border-box;
    }

    .slider {
        width: 100%;
        margin: 100px auto;
        z-index: 100000;
    }

    .slick-slide {
      margin: 10px 20px;
    }

    .slick-slide img {
      width: 100%;
      text-align:center;
    }

    .slick-prev:before,
    .slick-next:before {
        color:#fff;
        color:#999;
    }

.b{

  padding-left:180px; 
  text-align: center;

}

.b img:hover{
  width: 120%;
   zoom:1.8;
  z-index:100000000;
  xbackground-position:center;
  margin-left:-90px;
}

.katalog{
  margin-top:-200px;
  display:none;
  visibility:hidden;
  width: 1200px;
  background-color: #999;
}
  </style>

<div class="custom-page--content content block">
  <div class="pdf">

  <section class="variable slider">
    <div class="b">
      {foreach from=$bildersarray item=array}
      <img src="http://atala-shop.de/media/test/buero.JPG"/>
      {/foreach}
    </div>
 
    <div class="b">
      <img src="http://baumeier.eu/media/test/buero.JPG" />
    </div>
  
    <div class="b">
      <img src="http://baumeier.eu/media/test/buero.JPG" />
    </div>
  
    
    <div class="b">
      <img src="http://baumeier.eu/media/test/buero.JPG" />
    </div>
 
       
    <div class="b">
      <img src="/media/image/59/ff/d2/54500398_600x600.jpg" />
    </div>
    
    
    <div class="b">
      <img src="/media/image/59/ff/d2/54500398_600x600.jpg" />
    </div>
    
  </section>
</div>

<div class="katalog">

<img src="00_FLIESEN_KATALOG_2016_ONLINE.pdf" />
<p>Geklapt</p>
</div>


  <script type="text/javascript">
    $(document).on('ready', function() { $(".variable").slick({
        infinite: true,
        variableWidth: true
      });

    });

  </script>
