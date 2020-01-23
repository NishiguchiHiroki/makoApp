
$(document).on('turbolinks:load', function() { 
  "use strict"

  var $href = $(this).attr('href');
  var $dir = location.href.split("/");  
  var $dir2 = $dir[$dir.length -2];
  
  var $main = "menu_icon_js-color"

  if($dir2 === 'boxlunches'){
    $('.main-menu').addClass($main);
    $('.main-image').addClass($main);
  }else {
    $('.main-menu').removeClass($main);
    $('.main-image').removeClass($main);
  }

  if($dir2 === 'single_menus'){
    $('.single-menu').addClass($main);
    $('.single-box').addClass($main);
  }else {
    $('.single-menu').removeClass($main);
    $('.single-box').removeClass($main);
  }

  if($dir2 === 'drink_menus'){
    $('.drink-menu').addClass($main);
    $('.drink-box').addClass($main);
  }else {
    $('.drink-menu').removeClass($main);
    $('.drink-box').removeClass($main);
  }

  if($dir2 === 'reservations'){
    $('.reservation-menu').addClass($main);
    $('.reservation-box').addClass($main);
  }else {
    $('.reservation-menu').removeClass($main);
    $('.reservation-box').removeClass($main);
  }
  
});
