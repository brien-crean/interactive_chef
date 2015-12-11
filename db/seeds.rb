# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Ingredient seeds
Ingredient.create!(name: "Whole Tomatoes");
Ingredient.create!(name: "Diced Tomatoes");
Ingredient.create!(name: "Cherry Tomatoes");
Ingredient.create!(name: "Tomato Sauce");

# Lasagna
Ingredient.create!(name: "Crushed Tomatoes");
Ingredient.create!(name: "Tomato Paste");
Ingredient.create!(name: "Italian Sausage");
Ingredient.create!(name: "Minced Onion");
Ingredient.create!(name: "Dried Basil Leaves");
Ingredient.create!(name: "Fennel Seeds");
Ingredient.create!(name: "Italian Seasoning");
Ingredient.create!(name: "Black Pepper");
Ingredient.create!(name: "Parsley");
Ingredient.create!(name: "Lasagna Noodles");
Ingredient.create!(name: "Ricotta Cheese");
Ingredient.create!(name: "Egg");
Ingredient.create!(name: "Mozzarella Cheese");
Ingredient.create!(name: "Parmesan Cheese");


Ingredient.create!(name: "Olive Oil");
Ingredient.create!(name: "Potatoes");
Ingredient.create!(name: "Pasta");
Ingredient.create!(name: "Fresh Pasta");
Ingredient.create!(name: "White Sugar");
Ingredient.create!(name: "Brown Sugar");
Ingredient.create!(name: "Cumin");
Ingredient.create!(name: "Chickpeas");
Ingredient.create!(name: "Tahini");
Ingredient.create!(name: "Salt");
Ingredient.create!(name: "Water");
Ingredient.create!(name: "Paprika");
Ingredient.create!(name: "Lemon Juice");
Ingredient.create!(name: "Diced Beef");
Ingredient.create!(name: "Beef");
Ingredient.create!(name: "Ground Beef");
Ingredient.create!(name: "Lean Ground Beef");
Ingredient.create!(name: "Chicken");
Ingredient.create!(name: "Diced Chicken");
Ingredient.create!(name: "Chicken Breast");
Ingredient.create!(name: "Chicken Leg");
Ingredient.create!(name: "Onion");
Ingredient.create!(name: "Flour");
Ingredient.create!(name: "Milk Chocolate");
Ingredient.create!(name: "Dark Chocolate");

# Users
User.create!(first_name: "Brien", last_name: "Crean", email: "brien.crean@gmail.com", password: "password")
User.create!(first_name: "John", last_name: "Smith", email: "john.smith@gmail.com", password: "password")
User.create!(first_name: "Mary", last_name: "Rearden", email: "mary.rearden@gmail.com", password: "password")
User.create!(first_name: "Joanne", last_name: "Hennessy", email: "joanne.hennessy@gmail.com", password: "password")

Recipe.create!(title: "Lasagna", description: "This is a Classic Lasagna recipe filled with layers of homemade tomato meat sauce,
creamy ricotta, al dente noodles, and topped with mozzarella and Parmesan.",
cook_time: 45, prep_time: 15, user_id: 1)

Step.create!(body: "In a Dutch oven, cook sausage, ground beef, onion, and garlic over medium heat until well browned. Stir in crushed tomatoes, tomato paste, tomato sauce, and water. Season with sugar, basil, fennel seeds, Italian seasoning, 1 tablespoon salt, pepper, and 2 tablespoons parsley. Simmer, covered, for about 1 1/2 hours, stirring occasionally.", recipe_id: 1)

Step.create!(body: "Bring a large pot of lightly salted water to a boil. Cook lasagna noodles in boiling water for 8 to 10 minutes. Drain noodles, and rinse with cold water. In a mixing bowl, combine ricotta cheese with egg, remaining parsley, and 1/2 teaspoon salt.", recipe_id: 1)

Step.create!(body: "Preheat oven to 375 degrees F (190 degrees C).", recipe_id: 1)

Step.create!(body: "To assemble, spread 1 1/2 cups of meat sauce in the bottom of a 9x13 inch baking dish. Arrange 6 noodles lengthwise over meat sauce. Spread with one half of the ricotta cheese mixture. Top with a third of mozzarella cheese slices. Spoon 1 1/2 cups meat sauce over mozzarella, and sprinkle with 1/4 cup Parmesan cheese. Repeat layers, and top with remaining mozzarella and Parmesan cheese. Cover with foil: to prevent sticking, either spray foil with cooking spray, or make sure the foil does not touch the cheese.", recipe_id: 1)

Step.create!(body: "Bake in preheated oven for 25 minutes. Remove foil, and bake an additional 25 minutes. Cool for 15 minutes before serving.", recipe_id: 1)
