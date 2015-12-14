# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Users
User.create!(first_name: "Brien", last_name: "Crean", email: "brien.crean@gmail.com", password: "password")
User.create!(first_name: "John", last_name: "Smith", email: "john.smith@gmail.com", password: "password")
User.create!(first_name: "Mary", last_name: "Rearden", email: "mary.rearden@gmail.com", password: "password")
User.create!(first_name: "Joe", last_name: "Hennessy", email: "user@user.com", password: "password")

# Ingredient seeds
i1 = Ingredient.create!(name: "Whole Tomatoes");
i2  = Ingredient.create!(name: "Diced Tomatoes");
i3  = Ingredient.create!(name: "Cherry Tomatoes");
i4  = Ingredient.create!(name: "Tomato Sauce");

# Lasagna
i5  = Ingredient.create!(name: "Crushed Tomatoes");
i6  = Ingredient.create!(name: "Tomato Paste");
i7  = Ingredient.create!(name: "Italian Sausage");
i8  = Ingredient.create!(name: "Minced Onion");
i9  = Ingredient.create!(name: "Dried Basil Leaves");
i10  = Ingredient.create!(name: "Fennel Seeds");
i11  = Ingredient.create!(name: "Italian Seasoning");
i12  = Ingredient.create!(name: "Black Pepper");
i13  = Ingredient.create!(name: "Parsley");
i14  = Ingredient.create!(name: "Lasagna Noodles");
i15  = Ingredient.create!(name: "Ricotta Cheese");
i16  = Ingredient.create!(name: "Egg");
i17  = Ingredient.create!(name: "Sliced Mozzarella Cheese");
i18  = Ingredient.create!(name: "Grated Parmesan Cheese");


i19  = Ingredient.create!(name: "Olive Oil");
i20  = Ingredient.create!(name: "Potatoes");
i21  = Ingredient.create!(name: "Pasta");
i22  = Ingredient.create!(name: "Fresh Pasta");
i23  = Ingredient.create!(name: "White Sugar");
i24  = Ingredient.create!(name: "Brown Sugar");
i25  = Ingredient.create!(name: "Ground Cumin");
i26  = Ingredient.create!(name: "Canned Chickpeas");
i27  = Ingredient.create!(name: "Tahini");
i28  = Ingredient.create!(name: "Salt");
i29  = Ingredient.create!(name: "Water");
i30  = Ingredient.create!(name: "Ground Paprika");
i31  = Ingredient.create!(name: "Lemon Juice");
i32  = Ingredient.create!(name: "Diced Beef");
i33  = Ingredient.create!(name: "Beef");
i34  = Ingredient.create!(name: "Ground Beef");
i35  = Ingredient.create!(name: "Lean Ground Beef");
i36  = Ingredient.create!(name: "Chicken");
i37  = Ingredient.create!(name: "Diced Chicken");
i38  = Ingredient.create!(name: "Chicken Breast");
i39  = Ingredient.create!(name: "Chicken Leg");
i40  = Ingredient.create!(name: "Onion");
i41  = Ingredient.create!(name: "Flour");
i42  = Ingredient.create!(name: "Milk Chocolate");
i43  = Ingredient.create!(name: "Dark Chocolate");
i44  = Ingredient.create!(name: "Crushed Garlic");
i45  = Ingredient.create!(name: "Ground Black Pepper");
i46  = Ingredient.create!(name: "Chopped Fresh Parsley");
i47  = Ingredient.create!(name: "Minced Garlic");
i48  = Ingredient.create!(name: "Kosher Salt");
i49  = Ingredient.create!(name: "Boneless Skinless Chicken Breast");
i50  = Ingredient.create!(name: "Pesto");
i51  = Ingredient.create!(name: "Roma Tomatoes");
i52  = Ingredient.create!(name: "Grated Mozzarella Cheese");
i53  = Ingredient.create!(name: "Chopped White Onion");
i54  = Ingredient.create!(name: "Small Red Potatoes, quartered (peeling, optional)");
i55  = Ingredient.create!(name: "Sea Salt");
i56  = Ingredient.create!(name: "Corn, Kernels sliced off");
i57  = Ingredient.create!(name: "Low-Sodium Vegetable Broth");
i58  = Ingredient.create!(name: "unsweetened plain almond milk (or regular milk)");
i59  = Ingredient.create!(name: "Chopped Green Onions");
i60  = Ingredient.create!(name: "Red Bell Pepper");
i61  = Ingredient.create!(name: "Fajita Seasoning Mix");
i62  = Ingredient.create!(name: "Vegetable Oil");
i63  = Ingredient.create!(name: "6 inch Soft Tortillas");
i64  = Ingredient.create!(name: "Sour Cream");
i65  = Ingredient.create!(name: "Salsa");
i66  = Ingredient.create!(name: "Butternut Squash, halved lengthwise and seeded");
i67  = Ingredient.create!(name: "Chopped Fresh Oregano");
i68  = Ingredient.create!(name: "Unsalted Butter, melted");
i69  = Ingredient.create!(name: "Wonton Wrappers");
i70  = Ingredient.create!(name: "Large Egg, lightly beaten");
i71  = Ingredient.create!(name: "Garlic");
i72  = Ingredient.create!(name: "Fresh Baby Spinach");
i73  = Ingredient.create!(name: "Fresh Basil");
i74  = Ingredient.create!(name: "Toasted Walnuts, chopped");
i75  = Ingredient.create!(name: "Extra-Virgin Olive Oil");
i76  = Ingredient.create!(name: "Farfalle (Bowtie) Pasta, boiled to al dente and drained");
i77  = Ingredient.create!(name: "Boneless Skinless Chicken Breast, sautéed or grilled, cut into ½ inch cubes");
i78  = Ingredient.create!(name: "Green Bell Pepper");
i79  = Ingredient.create!(name: "Yellow Bell Pepper");
i80  = Ingredient.create!(name: "Purple Onion");
i81  = Ingredient.create!(name: "Butter");
i82  = Ingredient.create!(name: "Chicken Broth");
i83  = Ingredient.create!(name: "Half-and-Half");
i84  = Ingredient.create!(name: "Cajun Seasoning");
i85  = Ingredient.create!(name: "Shredded Asiago Cheese");
i86  = Ingredient.create!(name: "Large Head of Cauliflower, broken into florets");
i87  = Ingredient.create!(name: "Large Lemon, zested & juiced");
i88  = Ingredient.create!(name: "Ground Sumac");
i89  = Ingredient.create!(name: "Garlic Powder");


recipe1 = Recipe.create!(title: "Lasagna", description: "This is a Classic Lasagna recipe filled with layers of homemade tomato meat sauce,
creamy ricotta, al dente noodles, and topped with mozzarella and Parmesan.",
cook_time: 150, prep_time: 30, user_id: 1)

recipe2 = Recipe.create!(title: "Hummus", description: "This is the smoothest home-made hummus recipe. With just a few simple tricks, you really can make creamy smooth hummus at home and yes, we really do think it’s better than store-bought.",
cook_time: 0, prep_time: 10, user_id: 1)

recipe3 = Recipe.create!(title: "Italian Chicken Bake", description: "The Italian Chicken Bake comes together in minutes with only 4 ingredients and rich, delicious flavors!  An easy, healthy, and gluten free dinner recipe.",
cook_time: 35, prep_time: 10, user_id: 1)

recipe4 = Recipe.create!(title: "Corn Soup", description: "The recipe is simple: 9 ingredients total, and has the perfect balance of sweet and savory flavors, is healthy, and makes an ideal light lunch or dinner when accompanied with bread, a sandwich or a salad. Not only is it both vegan and gluten free, but it can also be prepared one of two ways: Blended and smooth, or chunky and brothy.",
cook_time: 20, prep_time: 10, user_id: 1)

recipe5 = Recipe.create!(title: "Oven-Baked Chicken Fajitas", description: "Make fajitas easier than ever with this oven shortcut that will save you time, but won’t skimp on flavor.",
cook_time: 40, prep_time: 10, user_id: 1)

recipe6 = Recipe.create!(title: "Butternut Squash Ravioli with Spinach Pesto", description: "This Butternut Squash Ravioli with Spinach Pesto recipe uses supermarket wonton wrappers to create a shortcut weeknight ravioli treat.",
cook_time: 40, prep_time: 35, user_id: 1)

recipe7 = Recipe.create!(title: "Cajun Chicken Pasta Bake", description: "This Creamy Cajun Chicken Bake is great for a quick meal while still having a lot of flavor. This is something the whole family will love.",
cook_time: 50, prep_time: 10, user_id: 1)

recipe8 = Recipe.create!(title: "Lemon Roasted Cauliflower With Cumin & Sumac", description: "This roasted cauliflower side-dish is crispy, salty, lemony, earthy, tangy and out of this world! The sumac and lemon work together to brighten the the tartness while the cumin adds an earthy simmer.",
cook_time: 30, prep_time: 5, user_id: 1)

recipe1.image = Rails.root.join("app/assets/images/lasagna_carousel.png").open
recipe1.save!
recipe2.image = Rails.root.join("app/assets/images/hummus_carousel.png").open
recipe2.save!
recipe3.image = Rails.root.join("app/assets/images/italian_chicken_bake_carousel.png").open
recipe3.save!
recipe4.image = Rails.root.join("app/assets/images/corn_soup_carousel.png").open
recipe4.save!
recipe5.image = Rails.root.join("app/assets/images/lasagna_carousel.png").open
recipe5.save!
recipe6.image = Rails.root.join("app/assets/images/hummus_carousel.png").open
recipe6.save!
recipe7.image = Rails.root.join("app/assets/images/italian_chicken_bake_carousel.png").open
recipe7.save!
recipe8.image = Rails.root.join("app/assets/images/corn_soup_carousel.png").open
recipe8.save!

Step.create!(body: "In a Dutch oven, cook sausage, ground beef, onion, and garlic over medium heat until well browned. Stir in crushed tomatoes, tomato paste, tomato sauce, and water. Season with sugar, basil, fennel seeds, Italian seasoning, 1 tablespoon salt, pepper, and 2 tablespoons parsley. Simmer, covered, for about 1 1/2 hours, stirring occasionally.", recipe_id: 1)

Step.create!(body: "Bring a large pot of lightly salted water to a boil. Cook lasagna noodles in boiling water for 8 to 10 minutes. Drain noodles, and rinse with cold water. In a mixing bowl, combine ricotta cheese with egg, remaining parsley, and 1/2 teaspoon salt.", recipe_id: 1)

Step.create!(body: "Preheat oven to 375 degrees F (190 degrees C).", recipe_id: 1)

Step.create!(body: "To assemble, spread 1 1/2 cups of meat sauce in the bottom of a 9x13 inch baking dish. Arrange 6 noodles lengthwise over meat sauce. Spread with one half of the ricotta cheese mixture. Top with a third of mozzarella cheese slices. Spoon 1 1/2 cups meat sauce over mozzarella, and sprinkle with 1/4 cup Parmesan cheese. Repeat layers, and top with remaining mozzarella and Parmesan cheese. Cover with foil: to prevent sticking, either spray foil with cooking spray, or make sure the foil does not touch the cheese.", recipe_id: 1)

Step.create!(body: "Bake in preheated oven for 25 minutes. Remove foil, and bake an additional 25 minutes. Cool for 15 minutes before serving.", recipe_id: 1)

Step.create!(body: "In the bowl of a food processor, combine tahini and lemon juice. Process for 1 minute. Scrape sides and bottom of bowl then turn on and process for 30 seconds. This extra time helps “whip” or “cream” the tahini, making smooth and creamy hummus possible.", recipe_id: 2)

Step.create!(body: "Add the olive oil, minced garlic, cumin and the salt to the whipped tahini and lemon juice mixture. Process for 30 seconds, scrape sides and bottom of bowl then process another 30 seconds.", recipe_id: 2)

Step.create!(body: "Open can of chickpeas, drain liquid then rinse well with water. Add half of the chickpeas to the food processor then process for 1 minute. Scrape sides and bottom of bowl, add remaining chickpeas and process for 1 to 2 minutes or until thick and quite smooth.", recipe_id: 2)

Step.create!(body: "Most likely the hummus will be too thick or still have tiny bits of chickpea. To fix this, with the food processor turned on, slowly add 2 to 3 tablespoons of water until the consistency is perfect.", recipe_id: 2)

Step.create!(body: "Scrape the hummus into a bowl and it is ready to serve. As an option you can drizzle about 1 tablespoon of olive oil over the top and sprinkle with paprika.", recipe_id: 2)

Step.create!(body: "Trim the chicken and lay them in a glass baking dish in a single layer.", recipe_id: 3)

Step.create!(body: "Spread 1-2 tablespoons of the pesto on top of each chicken breast.", recipe_id: 3)

Step.create!(body: "Cut the roma tomatoes into slices approx 1/2 inch thick and lay 2 slices on top of each chicken breast.", recipe_id: 3)

Step.create!(body: "Sprinkle the cheese over the top of the chicken breasts.", recipe_id: 3)

Step.create!(body: "Bake at 400F for 30-40 minutes or until the chicken is done and the juices run clear.", recipe_id: 3)

Step.create!(body: "Serve over a bed of rice or a plate of pasta. Enjoy!", recipe_id: 3)

Step.create!(body: "To a large saucepan over medium heat, add olive oil, onion and garlic and sauté for 3-4 minutes.", recipe_id: 4)

Step.create!(body: "Add potato, season with a little salt and pepper, and cover to steam for 4-5 minutes.", recipe_id: 4)

Step.create!(body: "Add most of the corn, reserving a little for garnish, and stir.", recipe_id: 4)

Step.create!(body: "NOTE: If you plan to blend the soup, I recommend adding half broth, half milk for a more creamy texture. But if you intend to leave it unblended, forgo the milk and do all broth for best texture/flavor.", recipe_id: 4)

Step.create!(body: "Add broth and almond milk (if using), cover, and bring to a low boil. Reduce heat to low. Cook until the potatoes are soft and slide off of a knife when pierced - about 5 minutes.", recipe_id: 4)

Step.create!(body: "If blending, add 3/4 of the soup to a blender and blend until creamy and smooth.", recipe_id: 4)

Step.create!(body: "Transfer soup back to the saucepan and bring back to a simmer. Taste and adjust seasonings as needed. Cook for at least 10 minutes to let thicken. The longer it simmers, the more flavorful it will be.", recipe_id: 4)

Step.create!(body: "To serve, top with chopped green onion, remaining fresh (or lightly sauteed) corn, and black pepper. Add a sprinkle of paprika for color.", recipe_id: 4)

Step.create!(body: "Heat oven to 400°F. Spray 13x9-inch (3-quart) glass baking dish with cooking spray. Cut onion and bell pepper into even slices; place in baking dish.", recipe_id: 5)

Step.create!(body: "Cut chicken breasts into thin strips; add to vegetables in dish. Sprinkle with seasoning mix; drizzle with oil. Stir until combined and pieces are coated.", recipe_id: 5)

Step.create!(body: "Bake 35 to 40 minutes, stirring once halfway through baking, until chicken is no longer pink in center.", recipe_id: 5)

Step.create!(body: "Spoon small amount of chicken and veggies onto each tortilla. Top each with sour cream and salsa, or your favorite fajita toppings.", recipe_id: 5)

Step.create!(body: "Preheat oven to 400°F.", recipe_id: 6)

Step.create!(body: "Place squash halves, cut sides down, on a foil-lined baking sheet coated with cooking spray. Bake at 400° for 30 minutes or until tender. Cool. Scoop out pulp; discard peel. Mash pulp. Combine oregano, squash pulp, and butter in a large bowl. Stir in 2 ounces (about 1/2 cup) cheese, 1/4 teaspoon salt, and 1/4 teaspoon pepper. Working with 1 wonton wrapper at a time (cover remaining wrappers with a damp towel to keep them from drying), spoon about 1 1/2 teaspoons squash mixture into center of each wrapper. Moisten edges of wrapper with beaten egg; bring 2 opposite corners together. Pinch edges together to seal, forming a triangle. Repeat procedure with remaining wrappers, squash mixture, and egg. Cover ravioli loosely with a towel to prevent drying.", recipe_id: 6)

Step.create!(body: "Place garlic in a food processor, and pulse until finely chopped. Add remaining 1/2 ounce (about 2 tablespoons) cheese, remaining 1/8 teaspoon salt, remaining 1/4 teaspoon pepper, spinach, basil, and 2 tablespoons walnuts. With processor on, slowly pour oil, broth, and juice through food chute. Process until well blended. Place pesto in a large bowl.", recipe_id: 6)

Step.create!(body: "Bring 6 quarts water to a boil in a large Dutch oven. Add half of ravioli; cook 3 minutes or until thoroughly cooked. Remove ravioli with a slotted spoon. Repeat procedure with remaining ravioli. Add ravioli to pesto; toss gently to coat. Arrange 6 ravioli on each of 6 plates; sprinkle each serving with 1 teaspoon walnuts.", recipe_id: 6)

Step.create!(body: "Heat oven to 350°F. Lightly spray baking dish with cooking spray.", recipe_id: 7)

Step.create!(body: "TCook pasta as directed on the packaging and drain.", recipe_id: 7)

Step.create!(body: "In a large sauce pan heat 3 tablespoons of olive oil, add sliced onion, garlic, sliced red, green and yellow peppers and sauté until they are slightly tender. Remove from pan and set aside.", recipe_id: 7)

Step.create!(body: "Using the same pan. Melt butter in a saucepan over medium heat. Stir in flour. Gradually stir in broth. Heat to boiling, stirring constantly; remove from heat. Stir in half-and-half, Cajun seasoning, 1/2 cup of parmesan, chicken and pepper mixture.", recipe_id: 7)

Step.create!(body: "Add pasta to chicken mixture; toss gently to mix well. Spoon into baking dish. Sprinkle with cheese. Bake uncovered about 20-30 minutes or until cheese is melted and warm in the center.", recipe_id: 7)

Step.create!(body: "Preheat oven to 425°F.", recipe_id: 8)

Including.create!(amount: 1, measure_type: "pound", ingredient_id: i7.id, recipe_id: recipe1.id )
Including.create!(amount: 0.75, measure_type: "pound", ingredient_id: i34.id, recipe_id: recipe1.id )
Including.create!(amount: 0.5, measure_type: "cup", ingredient_id: i8.id, recipe_id: recipe1.id )
Including.create!(amount: 2, measure_type: "clove", ingredient_id: i44.id, recipe_id: recipe1.id )
Including.create!(amount: 28, measure_type: "ounce", ingredient_id: i5.id, recipe_id: recipe1.id )
Including.create!(amount: 6, measure_type: "ounce", ingredient_id: i6.id, recipe_id: recipe1.id )
Including.create!(amount: 6.5, measure_type: "ounce", ingredient_id: i4.id, recipe_id: recipe1.id )
Including.create!(amount: 0.5, measure_type: "cup", ingredient_id: i29.id, recipe_id: recipe1.id )
Including.create!(amount: 2, measure_type: "tbsp", ingredient_id: i23.id, recipe_id: recipe1.id )
Including.create!(amount: 1.5, measure_type: "tsp", ingredient_id: i9.id, recipe_id: recipe1.id )
Including.create!(amount: 0.5, measure_type: "tsp", ingredient_id: i10.id, recipe_id: recipe1.id )
Including.create!(amount: 1, measure_type: "tsp", ingredient_id: i11.id, recipe_id: recipe1.id )
Including.create!(amount: 1, measure_type: "tbsp", ingredient_id: i28.id, recipe_id: recipe1.id )
Including.create!(amount: 0.25, measure_type: "tsp", ingredient_id: i45.id, recipe_id: recipe1.id )
Including.create!(amount: 4, measure_type: "tbsp", ingredient_id: i46.id, recipe_id: recipe1.id )
Including.create!(amount: 12, measure_type: "qty", ingredient_id: i14.id, recipe_id: recipe1.id )
Including.create!(amount: 16, measure_type: "ounce", ingredient_id: i15.id, recipe_id: recipe1.id )
Including.create!(amount: 1, measure_type: "qty", ingredient_id: i16.id, recipe_id: recipe1.id )
Including.create!(amount: 0.5, measure_type: "tsp", ingredient_id: i28.id, recipe_id: recipe1.id )
Including.create!(amount: 0.75, measure_type: "pound", ingredient_id: i17.id, recipe_id: recipe1.id )
Including.create!(amount: 0.75, measure_type: "cup", ingredient_id: i18.id, recipe_id: recipe1.id )

Including.create!(amount: 15, measure_type: "ounce", ingredient_id: i26.id, recipe_id: recipe2.id )
Including.create!(amount: 0.25, measure_type: "cup", ingredient_id: i31.id, recipe_id: recipe2.id )
Including.create!(amount: 0.25, measure_type: "cup", ingredient_id: i27.id, recipe_id: recipe2.id )
Including.create!(amount: 0.5, measure_type: "clove", ingredient_id: i47.id, recipe_id: recipe2.id )
Including.create!(amount: 2, measure_type: "tbsp", ingredient_id: i19.id, recipe_id: recipe2.id )
Including.create!(amount: 0.5, measure_type: "tsp", ingredient_id: i48.id, recipe_id: recipe2.id )
Including.create!(amount: 0.5, measure_type: "tsp", ingredient_id: i25.id, recipe_id: recipe2.id )
Including.create!(amount: 3, measure_type: "tbsp", ingredient_id: i29.id, recipe_id: recipe2.id )
Including.create!(amount: 1, measure_type: "dash", ingredient_id: i30.id, recipe_id: recipe2.id )

Including.create!(amount: 4, measure_type: "qty", ingredient_id: i49.id, recipe_id: recipe3.id )
Including.create!(amount: 6, measure_type: "tbsp", ingredient_id: i50.id, recipe_id: recipe3.id )
Including.create!(amount: 2, measure_type: "qty", ingredient_id: i51.id, recipe_id: recipe3.id )
Including.create!(amount: 1, measure_type: "cup", ingredient_id: i52.id, recipe_id: recipe3.id )

Including.create!(amount: 3, measure_type: "tbsp", ingredient_id: i19.id, recipe_id: recipe4.id )
Including.create!(amount: 1, measure_type: "cup", ingredient_id: i53.id, recipe_id: recipe4.id )
Including.create!(amount: 2, measure_type: "clove", ingredient_id: i47.id, recipe_id: recipe4.id )
Including.create!(amount: 4, measure_type: "qty", ingredient_id: i54.id, recipe_id: recipe4.id )
Including.create!(amount: 1, measure_type: "dash", ingredient_id: i55.id, recipe_id: recipe4.id )
Including.create!(amount: 1, measure_type: "dash", ingredient_id: i45.id, recipe_id: recipe4.id )
Including.create!(amount: 3, measure_type: "ear", ingredient_id: i56.id, recipe_id: recipe4.id )
Including.create!(amount: 2, measure_type: "cup", ingredient_id: i57.id, recipe_id: recipe4.id )
Including.create!(amount: 2, measure_type: "cup", ingredient_id: i58.id, recipe_id: recipe4.id )
Including.create!(amount: 3, measure_type: "qty", ingredient_id: i59.id, recipe_id: recipe4.id )


Including.create!(amount: 1, measure_type: "qty", ingredient_id: i40.id, recipe_id: recipe5.id )
Including.create!(amount: 1, measure_type: "qty", ingredient_id: i60.id, recipe_id: recipe5.id )
Including.create!(amount: 1, measure_type: "pound", ingredient_id: i49.id, recipe_id: recipe5.id )
Including.create!(amount: 1, measure_type: "ounce", ingredient_id: i61.id, recipe_id: recipe5.id )
Including.create!(amount: 2, measure_type: "tbsp", ingredient_id: i62.id, recipe_id: recipe5.id )
Including.create!(amount: 1, measure_type: "package", ingredient_id: i63.id, recipe_id: recipe5.id )
Including.create!(amount: 1, measure_type: "cup", ingredient_id: i64.id, recipe_id: recipe5.id )
Including.create!(amount: 1, measure_type: "cup", ingredient_id: i65.id, recipe_id: recipe5.id )

Including.create!(amount: 1, measure_type: "qty", ingredient_id: i66.id, recipe_id: recipe6.id )
Including.create!(amount: 1, measure_type: "tbsp", ingredient_id: i67.id, recipe_id: recipe6.id )
Including.create!(amount: 2, measure_type: "tbsp", ingredient_id: i68.id, recipe_id: recipe6.id )
Including.create!(amount: 2.5, measure_type: "ounce", ingredient_id: i18.id, recipe_id: recipe6.id )
Including.create!(amount: 0.375, measure_type: "tsp", ingredient_id: i28.id, recipe_id: recipe6.id )
Including.create!(amount: 0.5, measure_type: "tsp", ingredient_id: i45.id, recipe_id: recipe6.id )
Including.create!(amount: 36, measure_type: "qty", ingredient_id: i69.id, recipe_id: recipe6.id )
Including.create!(amount: 1, measure_type: "qty", ingredient_id: i70.id, recipe_id: recipe6.id )
Including.create!(amount: 2, measure_type: "clove", ingredient_id: i71.id, recipe_id: recipe6.id )
Including.create!(amount: 1.5, measure_type: "cup", ingredient_id: i72.id, recipe_id: recipe6.id )
Including.create!(amount: 0.5, measure_type: "cup", ingredient_id: i73.id, recipe_id: recipe6.id )
Including.create!(amount: 0.25, measure_type: "cup", ingredient_id: i74.id, recipe_id: recipe6.id )
Including.create!(amount: 2, measure_type: "tbsp", ingredient_id: i75.id, recipe_id: recipe6.id )
Including.create!(amount: 2, measure_type: "tbsp", ingredient_id: i57.id, recipe_id: recipe6.id )
Including.create!(amount: 1, measure_type: "tsp", ingredient_id: i31.id, recipe_id: recipe6.id )
Including.create!(amount: 6, measure_type: "quart", ingredient_id: i29.id, recipe_id: recipe6.id )

Including.create!(amount: 0.5, measure_type: "pound", ingredient_id: i76.id, recipe_id: recipe7.id )
Including.create!(amount: 1, measure_type: "pound", ingredient_id: i77.id, recipe_id: recipe7.id )
Including.create!(amount: 3, measure_type: "tbsp", ingredient_id: i19.id, recipe_id: recipe7.id )
Including.create!(amount: 3, measure_type: "clove", ingredient_id: i47.id, recipe_id: recipe7.id )
Including.create!(amount: 0.5, measure_type: "qty", ingredient_id: i60.id, recipe_id: recipe7.id )
Including.create!(amount: 0.5, measure_type: "qty", ingredient_id: i78.id, recipe_id: recipe7.id )
Including.create!(amount: 0.5, measure_type: "qty", ingredient_id: i79.id, recipe_id: recipe7.id )
Including.create!(amount: 0.5, measure_type: "qty", ingredient_id: i80.id, recipe_id: recipe7.id )
Including.create!(amount: 4, measure_type: "tbsp", ingredient_id: i81.id, recipe_id: recipe7.id )
Including.create!(amount: 2, measure_type: "tbsp", ingredient_id: i41.id, recipe_id: recipe7.id )
Including.create!(amount: 14.5, measure_type: "ounce", ingredient_id: i82.id, recipe_id: recipe7.id )
Including.create!(amount: 0.5, measure_type: "cup", ingredient_id: i83.id, recipe_id: recipe7.id )
Including.create!(amount: 3, measure_type: "tsp", ingredient_id: i84.id, recipe_id: recipe7.id )
Including.create!(amount: 0.5, measure_type: "cup", ingredient_id: i18.id, recipe_id: recipe7.id )
Including.create!(amount: 0.33, measure_type: "cup", ingredient_id: i85.id, recipe_id: recipe7.id )

Including.create!(amount: 1, measure_type: "qty", ingredient_id: i86.id, recipe_id: recipe8.id )
Including.create!(amount: 0.33, measure_type: "cup", ingredient_id: i19.id, recipe_id: recipe8.id )
Including.create!(amount: 1, measure_type: "qty", ingredient_id: i87.id, recipe_id: recipe8.id )
Including.create!(amount: 1, measure_type: "tbsp", ingredient_id: i25.id, recipe_id: recipe8.id )
Including.create!(amount: 1, measure_type: "tbsp", ingredient_id: i88.id, recipe_id: recipe8.id )
Including.create!(amount: 1, measure_type: "tsp", ingredient_id: i89.id, recipe_id: recipe8.id )
Including.create!(amount: 1, measure_type: "pinch", ingredient_id: i48.id, recipe_id: recipe8.id )
Including.create!(amount: 1, measure_type: "dash", ingredient_id: i45.id, recipe_id: recipe8.id )
