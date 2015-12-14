$(document).on('ready', function(){

  console.log("Custom Nav Loaded");
  console.log(Reveal.getCurrentSlide());

  if (annyang) {
    var commands = {
      'Next': function() {
        console.log("Right!");
        Reveal.right();
      },
      'Back': function() {
        console.log("Left!");
        Reveal.left();
      },
      'Slide Show': function() {
        var recipe = $("#recipe").data("id");
        if (recipe){
          console.log("Presentation started!");
          window.location.href = '/presentations/' + recipe;
        }else{
          speak("This feature is only available when viewing a recipe");
        }
      },
      'End': function() {
        var recipe = $("#recipe").data("id");
        if (recipe){
          console.log("Ended Presentation!");
          console.log(recipe);
          window.location.href = '/recipes/' + recipe;
        }else{
          speak("This feature is only available when viewing a recipe");
        }
      },
      'description': function() {
        var description = $('#description').html();
        console.log(description);
        speak(description);
        console.log("Description!");
      },
      'ingredients': function() {
        Reveal.slide( 2 );
      }
    };

    annyang.addCommands(commands);

    annyang.start();
  }
  else{
    console.log("Error!");
  }

});
