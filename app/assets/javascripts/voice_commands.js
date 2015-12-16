// called by each word/phrase recognised by Annyang commands
// Text to Speech test
$(document).ready(function(){
  $("#button").on('click', function() {
      var text = "This is a text to speech test!"
      var msg = new SpeechSynthesisUtterance(text);
      msg.lang = 'en-IE';
      window.speechSynthesis.speak(msg);
      console.log("Speaking! " + msg.lang);
  });
});
