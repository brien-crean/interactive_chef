$(document).on('ready', function(){
  var state;
  if (annyang) {
    var commands = {
      'Next': function() {
        Reveal.right();
        state = Reveal.getState();
      },
      'Back': function() {
        Reveal.left();
        state = Reveal.getState();
      },
      'Right': function() {
        Reveal.right();
        state = Reveal.getState();
      },
      'Left': function() {
        Reveal.left();
        state = Reveal.getState();
      },
      'Previous': function() {
        Reveal.left();
        state = Reveal.getState();
      },
      'Resume': function() {
        console.log(state);
        Reveal.setState( state );
      },
      'Slide Show': function() {
        var recipe = $("#recipe").data("id");
        if (recipe){
          window.location.href = '/presentations/' + recipe;
        }else{
          speak("This feature is only available when viewing a recipe");
        }
      },
      'End': function() {
        var recipe = $("#recipe").data("id");
        if (recipe){
          window.location.href = '/recipes/' + recipe;
        }else{
          speak("This feature is only available when viewing a recipe");
        }
      },
      'Ingredients': function() {
        Reveal.slide( 2 );
      },
      'Step *slide': function(slide) {
        var inc = parseInt(slide) + 2;
        Reveal.slide( inc);
        state = Reveal.getState();
      },
      'Speak description': function() {
        var description = $('#description').html();
        speak(description);
      },
      'Speak step *num': function(num) {
        var step = $('#step' + num).html();
        speak(step);
      },
      'timer *term': function(term){
        var timeArray   = term.split(" ")
        var timeCounter = timeArray[0];
        var timeType    = timeArray[1];
        console.log(timeCounter + " " + timeType);

        function setCounter(){
          console.log(timeCounter);
          if (timeCounter > 0){
            timeCounter --;
          }else{
            clearInterval(timer);
          }
        }
        var timer = setInterval(setCounter, 1000);
      }
    };

    annyang.addCommands(commands);

    annyang.start();
  }
  else{
    console.log("Error!");
  }

});


function speak(input){
  var msg = new SpeechSynthesisUtterance(input);
  msg.lang = 'en-IE';
  window.speechSynthesis.speak(msg);
  console.log("Text Recognised was: " + input);
}
