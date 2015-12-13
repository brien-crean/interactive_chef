$(document).on('ready', function(){

  $('body').on('click', function(){
    Reveal.right();
    simulateKeyPress();
  });

  $('body').on('dblclick', function(){
    Reveal.right();
    // leave slideshow
    window.location.href = 'http://localhost:3000/test';
  });

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
      'Presentation': function() {
        console.log("Ended!");
        window.location.href = 'http://localhost:3000/pages';
      },
      'End': function() {
        console.log("Ended!");
        window.location.href = 'http://localhost:3000/test';
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
