

var  mn = $(".navigation-main");
    mns = "navigation-main-scrolled";
    hdr = $('header').height();
	mn1 = $(".shop--navigation");
    mns1 = "shop--navigation-scrolled";


$(window).scroll(function() {
  if( $(this).scrollTop() > hdr ) {
    
	mn.addClass(mns);

	if ($(window).innerWidth()<768 )
	{
		mn1.addClass(mns1);
		}
	


  } else {
    mn.removeClass(mns);
	

	mn1.removeClass(mns1);


  }


  
});
