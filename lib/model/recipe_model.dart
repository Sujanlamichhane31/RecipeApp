class Recipe{
  String title;
  String description;
  String image;
  int calories;
  int carbo;
  int protein;
  String chef;
  String category;
  List<String> ingridents;
  List<String> steps;
  
  Recipe(
      this.title,
      this.description,
      this.image,
      this.calories,
      this.protein,
      this.carbo,
      this.chef,
      this.category,
      this.ingridents,
      this.steps,
  );
}

List<Recipe> getRecipes(){
  return <Recipe>[
    Recipe(
        "Savory",
        "Tasty Savory",
        "assets/images/savory.jpg",
        250,
        35,
        6,"Sujan",
        "Non-veg",
        ["3 – 6 skinless, boneless chicken thighs",
          "1 pound (450g) green beans, trimmed",
          "3 tablespoons butter, divided or (ghee for paleo diet)",
          "4 garlic cloves, minced",
          "1 teaspoon paprika",
          "1 teaspoon onion powder",
          "1/4 teaspoon salt and fresh cracked black pepper",
          "Juice of 1/2 lemon + lemon slices, for garnish",
          "1/2 cup (125ml) chicken stock",
          "1 tablespoon hot sauce (we used Sriracha)",
          "1/4 teaspoon crushed red chili pepper flakes, optional",
          "1/2 cup fresh chopped parsley"
        ],
        [" To make the lemon garlic butter chicken thighs recipe with green beans: In a small bowl, combine onion powder, paprika, salt, and pepper. Season chicken thighs generously with the spice mixture. Set aside while you prepare green beans.",
          " Arrange green beans in a microwave-safe dish with 1/2 cup (125ml) water. Cook in the microwave for 8-10 minutes, until almost done but still crisp.",
          "Melt 2 tablespoons butter in a large skillet over medium-low heat. Lay the seasoned chicken thighs in one layer in the skillet. Cook for 5-6 minutes then flip and cook another 5-6 minutes, until cooked through and a cooking thermometer displays 165°F (75°C). If chicken browns too quickly, lower the heat. Adjust timing depending on the thickness. Transfer chicken to a plate and set aside.",
          "In the same skillet, lower the heat and melt the remaining tablespoon of butter. Add chopped parsley, garlic, hot sauce, red crushed chili pepper flakes, and pre-cooked green beans and cook for 4 to 5 minutes, stirring regularly, until cooked to your liking. Add lemon juice and chicken stock and reduce the sauce for a couple of minutes, until slightly thickened.",
          "Add cooked chicken thighs back to the pan and reheat quickly. Adjust seasoning with pepper and serve the lemon garlic butter chicken thighs immediately, garnished with more crushed chili pepper, fresh parsley, and a slice of lemon if you like. Enjoy!"
        ]),
    Recipe(
        "StrawBerry Smoothie",
        "Refreshing Strawberry juice for relaxation.",
        "assets/images/strawberry.jpg",
        250,
        35,
        6,"Sujan",
        "Drink",
        ["Milk", "Frozen Strawberries", "Strawberry jam"],
        ["Simply throw them all into a good blender and whirr away!"]),
    Recipe(
        "Mushroom Avocado Toast",
        "Mushroom Avocado Toast is for breakfast",
        "assets/images/mushroom_avocado_toast.jpg",
        250,
        35,
        6,"Sujan",
        "Non-veg",
        ["2 cups mushrooms, sliced, any variety",
          "2-3 tsp extra virgin olive oil",
          "2-4 cloves garlic, roughly chopped",
          "1 Tbsp balsamic or apple cider vinegar",
          "salt and pepper to taste",
          "2 slices bread, toasted",
          "1 avocado",
          "fresh lemon – for the juice"
        ],
        [
          "Warm skillet over high heat. Add the oil. When the oil is hot, add the garlic. About a minutes later, pour in the mushrooms. Toss in the oil a bit with a spatula.",
          "Cover the pan with a lid and allow the mushrooms to cook for 1-3 minutes, just until tender and lightly browned.",
          "Reduce heat to low, remove lid, add salt and pepper and toss the mushrooms a bit. Turn heat off and add in the vinegar. Toss. Turn heat back up to high and allow to burn off any excess liquid. Mushrooms should be lightly browned and greatly reduced in size by now. Turn heat off and let them sit in the pan while you prep the toast.",
          "Toast bread and mash avocado into toast. Squeeze lemon over top.",
          "Top avocado toast with warm mushrooms. Slice and serve."
        ]),
    Recipe(
      
        "Sushi",
        "Homemade Sushi is so much cheaper than at the restaurant. Sushi is easy and fun to make at home, and you can put all your favorite ingredients into your perfect custom roll — here’s how!",
        "assets/images/sushi.jpg",
        250,
        35,
        6,"Sujan",
        "Non-veg",
    
        ["6 sheets sushi seaweed aka nori",
          "1 batch prepared sushi rice",
          "1/2 lb sushi-grade raw salmon or desired raw fish of choice",
          "4 oz cream cheese sliced into strips",
          "1 avocado sliced",
          "soy sauce for serving"
        ],
        ["Place the seaweed on a bamboo mat, then cover the sheet of seaweed with an even layer of prepared sushi rice. Smooth gently with the rice paddle.",
          "Layer salmon, cream cheese, and avocado on the rice, and roll it up tightly. Slice with a sharp knife, and enjoy with soy sauce.",
        ]),
    Recipe(
        "Baked Honey BBQ Popcorn Chicken",
        "Easy, crunchy, sticky, saucy chicken poppers that are coated and baked, not fried.",
        "assets/images/baked_honey_bbq_popcorn_chicken.jpg",
        250,
        35,
        6,"Sujan",
        "Non-veg",
    
        [
          "2 pounds boneless skinless chicken breasts, cut into bite-sized pieces",
          "1 cup (125g) all-purpose flour (spoon & leveled)",
          "5 cups (140g) corn flakes cereal, crushed lightly",
          "1/2 teaspoon salt",
          "1/2 teaspoon freshly ground black pepper"
              "1/2 teaspoon garlic powder",
          "1/4 teaspoon smoked paprika",
          "2 large eggs",
          "1/4 cup (60ml) milk",
          "3/4 cup (222g) your favorite BBQ sauce (I like Sweet Baby Rays Original)",
          "1/4 cup (80g) honey",
          "1/4 cup (68g) ketchup"
        ],
        ["Preheat oven to 400°F (204°C). Line a large baking sheet with parchment paper or a silicone baking mat. Set aside.",
          "Place the bite-sized pieces of chicken in a large bowl. Add flour and stir to coat each piece. Set aside.",
          "Place the corn flakes, salt, pepper, garlic powder, and smoked paprika into a large bowl. Set aside. Whisk the eggs and milk together in a small bowl.",
          "This next step gets your hands a little messy so have paper towels nearby. Dip each piece of chicken in the egg mixture, letting any excess drip off. Then generously roll in the cornflake mixture, shaking off any excess. Place onto the prepared baking sheet. Repeat with all chicken bites.",
          "Bake for 18 minutes, flipping once at the 9-10 minute mark. (During this time, I make the sauce in step 6.) Remove from the oven and allow to cool for 5 minutes.",
          "Heat the sauce ingredients in a small saucepan over medium heat for 6-7 minutes, whisking occasionally.",
          "Carefully place the chicken bites into a large bowl. Pour the warm honey BBQ sauce on top and gently stir to coat. Serve warm. Leftovers keep well in the refrigerator for up to 1 week. Reheat in the microwave until warmed through."
        ]),
    Recipe("Taco", "Taco for breakfast",
        "assets/images/let_us_taco_bout_it.jpg", 250, 35, 6,"Sujan",
        "Non-veg",
        [
          "1 lb lean ground beef",
          "1 medium onion, chopped",
          "1 teaspoon chili powder",
          "1/2 teaspoon salt",
          "1/2 teaspoon garlic powder",
          "1 can (8 oz) tomato sauce",
          "12 Old El Paso™ crunchy taco shells",
          "1 1/2 cups shredded Cheddar cheese (6 oz)",
          "2 cups shredded lettuce",
          "2medium tomatoes, chopped",
          "3/4 cup Old El Paso™ Thick 'n Chunky salsa",
          "3/4 cup sour cream, if desired"
        ],
        ["Heat oven to 250°F. In large skillet, brown ground beef and onion over medium heat for 8 to 10 minutes or until beef is thoroughly cooked, stirring frequently. Drain.",
          "Heat oven to 250°F. In large skillet, brown ground beef and onion over medium heat for 8 to 10 minutes or until beef is thoroughly cooked, stirring frequently. Drain.",
          "Meanwhile, place taco shells on ungreased cookie sheet. Heat at 250°F. for 5 minutes.",
          "To assemble tacos, layer beef mixture, cheese, lettuce and tomatoes in each taco shell. Serve with salsa; top with sour cream."]
    ),
    Recipe(
        "Grilled Irish Beef",
        "Grilled Irish Beef is the Non-veg food usually for dinner. It is one of the tasty and easy recipe. It is good for health. Taco is famous dish in most of the country",
        "assets/images/grilled_irish_beef.jpg",
        250,
        35,
        6,"Sujan",
        "Non-veg",
    
        ["2 pounds flank steak",
          "2 teaspoons Dijon mustard",
          "Onion",
          "2 cloves garlic (minced)",
          "1 pint Guinness",
          "Salt and pepper"],
      
        ["In a large plastic zip-top bag or plastic container with a tight lid, combine the steak, Dijon mustard, garlic, Guinness, salt, and pepper. Close the bag or container and shake it well to evenly distribute the marinade. ",
          "Put the marinating steak in the refrigerator for 2 hours. ",
          "Remove the steak from the fridge and let it come to room temperature while you prepare the grill.",
          "Set the grill to high heat, or about 450 F.",
          "Grill the steak for 4 to 5 minutes for each side, double-checking the internal temperature with an internal meat thermometer",
          "Remove the steak from the grill, and let it rest for 5 to 10 minutes before serving.",
        ]),
    Recipe(
        "Chicken with Spinach And Bacon",
        "Chicken with Spinach And Baco. It is the special recipe made by chef Sujan Lamichhane",
        "assets/images/chicken_with_spinach_and_Bacon.jpg",
        250,
        35,
        6,"Sujan",
        "Non-veg",
    
        ["6 chicken thighs, boneless and skin off (or chicken breast)",
          "2 teaspoons olive oil",
          "2 tablespoons butter",
          "6 cloves garlic, finely diced",
          "1 small yellow onion, diced",
          "1/3 cup chicken broth (or dry white wine)",
          "1/2 cup crispy bacon, chopped",
          "1 3/4 cups half and half",
          "3 cups baby spinach leaves",
          "Salt and fresh cracked pepper",
          "1 teaspoon Italian seasoning",
          "1/2 cup fresh grated Parmesan cheese",
          "Crushed chili pepper flakes, optional",
          "1 teaspoon cornstarch (cornflour) mixed with 1 tablespoon of water (optional, if you like a thicker sauce)"
        ],
      
        ["To make the garlic butter chicken thighs with creamy spinach and bacon: Heat the oil in a large skillet over medium heat. Season the chicken thighs on both sides with salt and pepper, and sear in the pan for 5-8 minutes on each side, or until cooked through. Once cooked, remove chicken from the pan and set aside.",
          "Melt the butter in the remaining cooking juices leftover in the pan. Add in the onion and garlic and fry until fragrant (about one minute). Pour in the chicken stock (or white wine, if using), and allow to reduce down slightly. Add the crispy bacon and fry for 1-2 minutes to release the flavors.",
          "Reduce heat to low heat, add the half and half (or heavy cream), and bring to a gentle simmer, while stirring occasionally. Make sure to lower the heat to avoid the sauce to separate. Add Italian seasoning and season with salt and pepper to your taste.",
          "Add in the spinach leaves and allow to wilt in the sauce, and add in the parmesan cheese. Allow sauce to simmer for a further minute until cheese melts through the sauce. For a thicker sauce, add the cornstarch mixture (1 teaspoon cornstarch + 1 tablespoon water, see the ingredients list) to the skillet, and continue to simmer while quickly stirring the mixture through until the sauce thickens.",
          "Add the cooked chicken back into the pan; sprinkle with chili pepper flakes (if using), and spoon the sauce over each chicken thigh. Serve the Garlic Butter Chicken with Spinach and Bacon over pasta, rice, or a low-carb favorite like zoodles, cauliflower rice, or steamed veggies. Enjoy!"]),
    Recipe(
        "Fish Taco Salad",
        "This recipe is super easy to put together and full of flavor. Forget Taco Tuesdays and make this any day of the week. It will quickly become a family favorite.",
        "assets/images/fish_taco_salad.jpg",
        250,
        35,
        6,"Sujan",
        "Non-veg",
    
        ["1 pound tilapia or other white fish fillets",
          "1 tablespoon taco seasoning",
          "Salt to taste",
          "2 teaspoons olive oil",
          "1 15- ounce can black beans rinsed and drained",
          "1 cup prepared fresh salsa or pico de gallo"
              "1 avocado thinly sliced",
          "¼ cup light sour cream or low-fat Greek yogurt"
              "6 cups shredded romaine lettuce",
          "Optional garnish: cilantro leaves lime wedges"],
        ["Heat the olive in a large pan over medium-high heat. Sprinkle the fish with taco seasoning and salt to taste.",
          "Place the fish in the pan and cook for 3-4 minutes on each side or until just done. Break up the fish into 2-inch pieces.",
          "Divide the lettuce among 4 bowls and top with the fish, 1/3 cup black beans, ¼ cup salsa, ¼ avocado, and 1 tablespoon sour cream. Serve, garnished with cilantro and lime wedges if desired.",
        ]),
    Recipe(
        "Lemon Garlic Chicken Thighs with Beans",
        "This skillet chicken Thighs recipe with green beans is a snap to fix and is so addicting!",
        "assets/images/lemon_garlic_butter_chiken_thighs_and_green_beans_skillet.jpg",
        250,
        35,
        6,"Sandhya Lamichhane",
        "Non-veg",
    
        ["3 – 6 skinless, boneless chicken thighs",
          "1 pound (450g) green beans, trimmed",
          "3 tablespoons butter, divided or (ghee for paleo diet)",
          "4 garlic cloves, minced",
          "1 teaspoon paprika",
          "1 teaspoon onion powder",
          "1/4 teaspoon salt and fresh cracked black pepper",
          "Juice of 1/2 lemon + lemon slices, for garnish",
          "1/2 cup (125ml) chicken stock",
          "1 tablespoon hot sauce (we used Sriracha)",
          "1/4 teaspoon crushed red chili pepper flakes, optional",
          "1/2 cup fresh chopped parsley"
        ],
        [" To make the lemon garlic butter chicken thighs recipe with green beans: In a small bowl, combine onion powder, paprika, salt, and pepper. Season chicken thighs generously with the spice mixture. Set aside while you prepare green beans.",
          " Arrange green beans in a microwave-safe dish with 1/2 cup (125ml) water. Cook in the microwave for 8-10 minutes, until almost done but still crisp.",
          "Melt 2 tablespoons butter in a large skillet over medium-low heat. Lay the seasoned chicken thighs in one layer in the skillet. Cook for 5-6 minutes then flip and cook another 5-6 minutes, until cooked through and a cooking thermometer displays 165°F (75°C). If chicken browns too quickly, lower the heat. Adjust timing depending on the thickness. Transfer chicken to a plate and set aside.",
          "In the same skillet, lower the heat and melt the remaining tablespoon of butter. Add chopped parsley, garlic, hot sauce, red crushed chili pepper flakes, and pre-cooked green beans and cook for 4 to 5 minutes, stirring regularly, until cooked to your liking. Add lemon juice and chicken stock and reduce the sauce for a couple of minutes, until slightly thickened.",
          "Add cooked chicken thighs back to the pan and reheat quickly. Adjust seasoning with pepper and serve the lemon garlic butter chicken thighs immediately, garnished with more crushed chili pepper, fresh parsley, and a slice of lemon if you like. Enjoy!"
        ]),
   
  ];
}