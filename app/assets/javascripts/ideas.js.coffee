# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$( -> $('#notice').delay(3000).fadeOut(500) )



$( ->
     console.log("called")
     client = Stomp.client( 'ws://localhost:8675/' )
     console.log(client)
     display = (message) -> 
       msg = $.parseJSON( message.body )
       $("#tweets").prepend("<tr><td class='score-#{msg.score}'><span class='user'>#{msg.user}</span> - #{msg.text}</td></tr>")
     client.connect( null, null, -> 
       $(window).unload(-> client.disconnect())
       console.log('subscribing')
       client.subscribe( '/stomplet/tweets', display)))
                

  
