$(document).ready(function(){
  $('#get_color').on('click', function(event){
    event.preventDefault();
    var data = 0;
    $.post('/color', data, function(response){
      console.log(response);
      var cell = response.cell;
      $($('#color_me li')[cell]).css("background", response.color);
    });
  });

});
