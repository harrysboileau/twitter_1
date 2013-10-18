$(document).ready(function(){
  $('#get_color').on('click', function(event){
    event.preventDefault();

    $.post('/color', function(data){
      console.log("Button clicked!");
      console.log("Our cell number is " + data.cell)
      console.log("Our color is " + data.color)
      $('li:nth-child(' + data.cell + ')').css('background-color', data.color)
    });
  });
});
