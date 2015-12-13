# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Users
User.create!(first_name: "Brien", last_name: "Crean", email: "brien.crean@gmail.com", password: "password")
User.create!(first_name: "John", last_name: "Smith", email: "john.smith@gmail.com", password: "password")
User.create!(first_name: "Mary", last_name: "Rearden", email: "mary.rearden@gmail.com", password: "password")
User.create!(first_name: "Joanne", last_name: "Hennessy", email: "joanne.hennessy@gmail.com", password: "password")

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

recipe1 = Recipe.create!(title: "Lasagna", description: "This is a Classic Lasagna recipe filled with layers of homemade tomato meat sauce,
creamy ricotta, al dente noodles, and topped with mozzarella and Parmesan.",
cook_time: 150, prep_time: 30, user_id: 1)

recipe2 = Recipe.create!(title: "Hummus", description: "This is the smoothest home-made hummus recipe. With just a few simple tricks, you really can make creamy smooth hummus at home and yes, we really do think it’s better than store-bought.",
cook_time: 0, prep_time: 10, user_id: 1)

recipe3 = Recipe.create!(title: "Italian Chicken Bake", description: "The Italian Chicken Bake comes together in minutes with only 4 ingredients and rich, delicious flavors!  An easy, healthy, and gluten free dinner recipe.",
cook_time: 35, prep_time: 10, user_id: 1)

recipe4 = Recipe.create!(title: "Corn Soup", description: "The recipe is simple: 9 ingredients total, and has the perfect balance of sweet and savory flavors, is healthy, and makes an ideal light lunch or dinner when accompanied with bread, a sandwich or a salad. Not only is it both vegan and gluten free, but it can also be prepared one of two ways: Blended and smooth, or chunky and brothy.",
cook_time: 20, prep_time: 10, user_id: 1)

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
