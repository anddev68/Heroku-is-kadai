$(document).ready(function(){

    $(".buddy").on("swiperight",function(){
      $(this).addClass('rotate-left').delay(700).fadeOut(1);
      $('.buddy').find('.status').remove();

      $(this).append('<div class="status like">男の娘</div>');      
      if ( $(this).is(':last-child') ) {
        $('.buddy:nth-child(1)').removeClass ('rotate-left rotate-right').fadeIn(300);
      } else {
          //$(this).next().removeClass('rotate-left rotate-right').fadeIn(400);
      }
      
      var sex = $(this).data('sex');
      if(sex=="girl"){
        console.log("間違いです");
        alert('間違いです')
      }
    });  

   $(".buddy").on("swipeleft",function(){
    $(this).addClass('rotate-right').delay(700).fadeOut(1);
    $('.buddy').find('.status').remove();
    $(this).append('<div class="status dislike">女の子</div>');

    if ( $(this).is(':last-child') ) {
     $('.buddy:nth-child(1)').removeClass ('rotate-left rotate-right').fadeIn(300);
      //alert('OUPS');
    } else {
        //$(this).next().removeClass('rotate-left rotate-right').fadeIn(400);
    }
    
    var sex = $(this).data('sex');
    if(sex=="shemale"){
      console.log("間違いです");
      alert('間違いです');
    }
  });


});