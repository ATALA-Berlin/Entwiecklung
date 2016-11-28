
<style type="text/css">

.slider{
margin: 0px auto;
width: 100%;
height: auto;
text-align: center;
border: 1px solid #999;

}
.slides {
    padding: 0;
    width: 900px;
    height: 520px;
    xdisplay: block;
    xmargin: 0 auto;
    position: relative;
    text-align: center;
    margin-left: auto;
    margin-right:auto;
}

.slides * {
    user-select: none;
    -ms-user-select: none;
    -moz-user-select: none;
    -khtml-user-select: none;
    -webkit-user-select: none;
    -webkit-touch-callout: none;
}

.slides input { display: none; }

.slide-container { display: block; }

.slide {
    top: 0;
    opacity: 0;
    width: 609px;
    height: 420px;
    display: block;
    position: absolute;

    transform: scale(0.1);

    transition: all .7s ease-in-out;
}

.slide img {
    width: 100%;
    height: 100%;
    margin-left:30%;
    margin-right:0px;
    padding: 10px;
}


.nav label {
    width: 100px;
    height: 100%;
    display: none;
    position: absolute;
      opacity: 0;
    z-index: 9;
    cursor: pointer;
    transition: opacity .2s;

    color: #FFF;
    font-size: 156pt;
    text-align: center;
    line-height: 380px;
    font-family: "Varela Round", sans-serif;
    background-color: rgba(255, 255, 255, .3);
    text-shadow: 0px 0px 15px rgb(119, 119, 119);
    
}

.slide:hover + .nav label { opacity: 0.5; }

.nav label:hover { opacity: 1; }

.nav .next { right: 0; }

input:checked + .slide-container  .slide {
    opacity: 1;

    transform: scale(1);

    transition: opacity 1s ease-in-out;
}

input:checked + .slide-container .nav label { display: block; }


input#img-1:checked ~ .nav-dots label#img-dot-1,
input#img-2:checked ~ .nav-dots label#img-dot-2,
input#img-3:checked ~ .nav-dots label#img-dot-3,
input#img-4:checked ~ .nav-dots label#img-dot-4,
input#img-5:checked ~ .nav-dots label#img-dot-5,
input#img-6:checked ~ .nav-dots label#img-dot-6 {
    background: rgba(0, 0, 0, 0.8);
}

</style>
<div class="slider">
<ul class="slides">
    <input type="radio" name="radio-btn" id="img-1" checked />
    <li class="slide-container">
        <div class="slide">
            <img src="http://baumeier.eu/media/image/79/98/22/Makita-Shop.jpg" />
        </div>
        <div class="nav">
            <label for="img-6" class="prev">&#x2039;</label>
            <label for="img-2" class="next">&#x203a;</label>
        </div>
    </li>

    <input type="radio" name="radio-btn" id="img-2" />
    <li class="slide-container">
        <div class="slide">
          <img src="/media/image/59/fc//b4/60848540_1280x1280.jpg "/>
        </div>
        <div class="nav">
            <label for="img-1" class="prev">&#x2039;</label>
            <label for="img-3" class="next">&#x203a;</label>
        </div>
    </li>

    <input type="radio" name="radio-btn" id="img-3" />
    <li class="slide-container">
        <div class="slide">
          <img src="http://baumeier.eu/media/image/59/fa/31/48025950_600x600@2x.jpg" />
        </div>
        <div class="nav" style="width:100%;">
            <label for="img-2" class="prev">&#x2039;</label>
            <label for="img-4" class="next">&#x203a;</label>
        </div>
    </li>
</ul>
</div>

