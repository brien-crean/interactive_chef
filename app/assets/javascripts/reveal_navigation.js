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
        console.log("Hidden!");

        window.location.href = '/presentations/3';
        // $.ajax({
        //   url: "/presentations",
        //   method: 'GET',
        //   error: function() {
        //     console.log("ERROR!");
        //   },
        //   success: function(data) {
        //     console.log("SUCCESS!");
        //     console.log(data);
        //   }
        // });
      },
      'End': function() {
        console.log("Ended!");
        window.location.href = '/';
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
