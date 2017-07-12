$.ajax({
  method: 'GET',
  url:'http://localhost:9393/soccer/json',
  success: function(response){
    console.log(response);
    $('#sport').text(response.name);
    for(i = 0; i < response.top_players.length; i++){
      $('#players').append('<li>'+ response.top_players[i] + '</li>')
    }
  }
})

$('.link').click(function(e){
  e.preventDefault();
  var myUrl = $(e.target).attr('href')

  $.ajax({
    method: 'GET',
    url: myUrl,
    success: function(response){
      $('#players').empty();
      $('#sport').text(response.name);
      for(i = 0; i < response.top_players.length; i++){
        $('#players').append('<li>'+ response.top_players[i] + '</li>')
      }
    }
  })
})
