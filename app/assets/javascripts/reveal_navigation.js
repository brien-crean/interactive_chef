$(document).on('ready', function(){

  console.log("Custom Nav Loaded");
  console.log(Reveal.getCurrentSlide());

  if (annyang) {
    var commands = {
      'Right': function() {
        console.log("Right!");
        Reveal.right();
      },
      'Left': function() {
        console.log("Left!");
        Reveal.left();
      },
      'Slide Show': function() {
        console.log("Presentation started!");
        var recipe = $("#recipe").data("id");
        window.location.href = '/presentations/' + recipe;
      },
      'End': function() {
        console.log("Ended Presentation!");
        var recipe = $("#recipe").data("id");
        console.log(recipe);
        window.location.href = '/recipes/' + recipe;
      },
      'description': function() {
        var description = $('#description').html();
        console.log(description);
        speak(description);
        console.log("Description!");
      }
    };

    annyang.addCommands(commands);

    annyang.start();
  }
  else{
    console.log("Error!");
  }

});
