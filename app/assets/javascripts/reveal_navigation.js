$(document).on('ready', function(){
  // console.log("Custom Nav Loaded");
  // console.log(Reveal.getCurrentSlide());
var state;
  if (annyang) {
    var commands = {
      'Next': function() {
        // console.log("Right!");
        Reveal.right();
        state = Reveal.getState();
        // console.log(state);
      },
      'Back': function() {
        // console.log("Left!");
        Reveal.left();
        state = Reveal.getState();
        // console.log(state);
      },
      'Resume': function() {
        Reveal.setState( state );
      },
      'Slide Show': function() {
        var recipe = $("#recipe").data("id");
        if (recipe){
          // console.log("Presentation started!");
          window.location.href = '/presentations/' + recipe;
        }else{
          speak("This feature is only available when viewing a recipe");
        }
      },
      'End': function() {
        var recipe = $("#recipe").data("id");
        if (recipe){
          // console.log("Ended Presentation!");
          // console.log(recipe);
          window.location.href = '/recipes/' + recipe;
        }else{
          speak("This feature is only available when viewing a recipe");
        }
      },
      'description': function() {
        var description = $('#description').html();
        // console.log(description);
        speak(description);
        // console.log("Description!");
      },
      'ingredients': function() {
        Reveal.slide( 2 );
      },
      'Step *num': function(num) {
        console.log(num)
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
