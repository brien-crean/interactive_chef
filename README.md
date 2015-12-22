# Interactive Chef
  - Interactive Chef allows users to view and add recipes with a twist.
  - Navigating through recipe ingredients and steps is made possible using voice commands.
  - If you have ever followed a recipe online you've probably tried to scroll through the recipe steps  
  while trying to avoid touching your expensive device with dirty hands!

# Demo

  - https://interactive-chef.herokuapp.com/recipes  

## Tech used in this app
  - Ruby on Rails 4.2.4
  - Ruby version 2.2.1
  - Postgresql DB
  - Bootstrap version 3
  - Google Chrome's Speech Recognition API
  - Annyang speech recognition library by TalAter https://github.com/TalAter/annyang
  - RevealJS by hakimel https://github.com/hakimel/reveal.js/
  - Nokogiri for Recipe scraping

## Features
  - View and add recipes in regular web mode
  - View Recipes in Audio mode and navigate with voice commands:
    + "Next/Right" to move to the next slide.
    + "Back/Left" to move to the previous slide.
    + "Ingredients" to move to the list of Ingredients slide.
    + "Step + Number" to move to specific step, e.g. "Step 1"
    + "Resume" to move back to the last step
    + "End" to quit Audio mode.
    + "Help" to toggle Audio mode help.
  - Scrape recipes from AllRecipes.com and save them to local database
  - More features to come!
