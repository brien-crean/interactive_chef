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
i17  = Ingredient.create!(name: "Mozzarella Cheese");
i18  = Ingredient.create!(name: "Parmesan Cheese");


i19  = Ingredient.create!(name: "Olive Oil");
i20  = Ingredient.create!(name: "Potatoes");
i21  = Ingredient.create!(name: "Pasta");
i22  = Ingredient.create!(name: "Fresh Pasta");
i23  = Ingredient.create!(name: "White Sugar");
i24  = Ingredient.create!(name: "Brown Sugar");
i25  = Ingredient.create!(name: "Cumin");
i26  = Ingredient.create!(name: "Chickpeas");
i27  = Ingredient.create!(name: "Tahini");
i28  = Ingredient.create!(name: "Salt");
i29  = Ingredient.create!(name: "Water");
i30  = Ingredient.create!(name: "Paprika");
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


recipe1 = Recipe.create!(title: "Lasagna", description: "This is a Classic Lasagna recipe filled with layers of homemade tomato meat sauce,
creamy ricotta, al dente noodles, and topped with mozzarella and Parmesan.",
cook_time: 45, prep_time: 15, user_id: 1)

recipe1.image = Rails.root.join("app/assets/images/lasagne.jpg").open
recipe1.save!

Step.create!(body: "In a Dutch oven, cook sausage, ground beef, onion, and garlic over medium heat until well browned. Stir in crushed tomatoes, tomato paste, tomato sauce, and water. Season with sugar, basil, fennel seeds, Italian seasoning, 1 tablespoon salt, pepper, and 2 tablespoons parsley. Simmer, covered, for about 1 1/2 hours, stirring occasionally.", recipe_id: 1)

Step.create!(body: "Bring a large pot of lightly salted water to a boil. Cook lasagna noodles in boiling water for 8 to 10 minutes. Drain noodles, and rinse with cold water. In a mixing bowl, combine ricotta cheese with egg, remaining parsley, and 1/2 teaspoon salt.", recipe_id: 1)

Step.create!(body: "Preheat oven to 375 degrees F (190 degrees C).", recipe_id: 1)

Step.create!(body: "To assemble, spread 1 1/2 cups of meat sauce in the bottom of a 9x13 inch baking dish. Arrange 6 noodles lengthwise over meat sauce. Spread with one half of the ricotta cheese mixture. Top with a third of mozzarella cheese slices. Spoon 1 1/2 cups meat sauce over mozzarella, and sprinkle with 1/4 cup Parmesan cheese. Repeat layers, and top with remaining mozzarella and Parmesan cheese. Cover with foil: to prevent sticking, either spray foil with cooking spray, or make sure the foil does not touch the cheese.", recipe_id: 1)

Step.create!(body: "Bake in preheated oven for 25 minutes. Remove foil, and bake an additional 25 minutes. Cool for 15 minutes before serving.", recipe_id: 1)

Including.create!(amount: 1, measure_type: "pound", ingredient_id: i7.id, recipe_id: recipe1.id )
Including.create!(amount: 3, measure_type: "pound", ingredient_id: i34.id, recipe_id: recipe1.id )
