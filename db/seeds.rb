puts "🌱 Seeding spices..."
Cookbook.destroy_all
Recipe.destroy_all

puts "Creating cookbooks..."
italian = Cookbook.create(cookbook_name: "Italian foods", img_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2020%2F11%2F05%2FShrimp-Scampi.jpg&w=400&h=400&c=sc&poi=face&q=60")

chinese = Cookbook.create(cookbook_name: "Chinese foods", img_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2019%2F08%2F26232354%2F3749781.jpg&w=400&h=400&c=sc&poi=face&q=60")

spanish = Cookbook.create(cookbook_name: "Spanish foods", img_url: "https://media.riverford.co.uk/images/chorizo-kale-and-butterbean-stew-400x400-4549f18d3043efc4a44eac832545b072.jpg")

greek = Cookbook.create(cookbook_name: "Greek foods", img_url: "https://sheerluxe.com/sites/sheerluxe/files/styles/square_small/public/articles/2021/04/herogreekgood.jpg?itok=6Pvbu6HV")

french = Cookbook.create(cookbook_name: "French foods", img_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2013%2F09%2FHD-200810-r-bouillabaisse.jpg&w=400&h=400&c=sc&poi=%5B275%2C275%5D&q=60")

turkish = Cookbook.create(cookbook_name: "Turkish foods", img_url: "https://www.worldfoodstory.co.uk/wp-content/uploads/2020/10/20210425_173517-400x400.jpg")

vietnamese = Cookbook.create(cookbook_name: "Vietnamese foods", img_url: "https://cdn.uyenluu.com/2021/05/Book-Noodle-Soup-Bun-Bon-Hue_8581-400x400.jpg")

thai = Cookbook.create(cookbook_name: "Thai foods", img_url: "https://cdn.shopify.com/s/files/1/1182/3584/products/Takeout-Kit-Pad-Thai-Meal-Kit_400x.jpg?v=1593620094")

german = Cookbook.create(cookbook_name: "German foods", img_url: "https://www.sugarandsoul.co/wp-content/uploads/2021/04/hot-german-potato-salad-17-400x400.jpg")

african = Cookbook.create(cookbook_name: "South African foods", img_url: "https://i.pinimg.com/474x/f2/05/23/f2052363ab189cbbbb620cc788e2a18e.jpg")

puts "Creating recipes..."
Recipe.create(
    cookbook_id: italian.id, 
    recipe_name: "Chicken Parm", 
    img_url: "https://hallmark.brightspotcdn.com/dims4/default/58dd81f/2147483647/strip/true/crop/2000x2000+427+0/resize/400x400!/quality/90/?url=http%3A%2F%2Fhallmark-channel-brightspot.s3.amazonaws.com%2F1f%2Fcd%2F5b190cc2efe1d554f93d3cbf89e2%2Fhome-family-chicken-parmesan.jpg" ,
    ingredients: "4 Boneless Chicken Breasts, 1 large egg, 0.5 cup milk, 1 cup seasoned breadcrumbs, 2 to 3 tablespoons extra virgin olive oil, 8 slices mozzarella cheese, 1 jar pasta sauce, 0.5 grated Parmesan cheese, 8 ounces spaghetti", 
    description: "Preheat oven to 450°F. Spray a large baking sheet lightly with spray. Combine breadcrumbs and parmesan cheese in a bowl. Melt the butter in another bowl. Lightly brush the butter onto the chicken, then dip into breadcrumb mixture.  Place on baking sheet and repeat with the remaining chicken. Lightly spray a little more oil on top and bake in the oven for 25 minutes. Remove from oven, spoon 1 tbsp sauce over each piece of chicken and top each with 1 1/2 tbsp of shredded mozzarella cheese. Bake 5 more minutes or until cheese is melted.")

Recipe.create(
    cookbook_id: italian.id,
    recipe_name: "Spaghetti",
    img_url: "https://default-mygourmetcreatio.netdna-ssl.com/wp-content/uploads/2018/02/Instant-Pot-Spaghetti-4-of-5-400x400.jpg" ,
    ingredients: "1 pound ground beef, 1 medium onion, 4 cloves minced garlic, 1 small green bell pepper diced, 1 can diced tomatoes, 1 can tomato sauce, 2 teaspoons dried oregano, 2 teaspoons dried basil, 1 teaspoon salt, 1/2 teaspoon ground black pepper" ,
    description: "Combine ground beef, onion, garlic, and green pepper in a large saucepan over medium-high heat. Cook and stir until meat is browned and crumbly and vegetables are tender, 5 to 7 minutes. Drain grease. Stir diced tomatoes, tomato sauce, and tomato paste into the pan. Season with oregano, basil, salt, and pepper. Simmer spaghetti sauce for 1 hour, stirring occasionally.")

Recipe.create(
    cookbook_id: spanish.id,
    recipe_name: "Butter bean & chorizo stew",
    img_url: "https://media.riverford.co.uk/images/chorizo-kale-and-butterbean-stew-400x400-4549f18d3043efc4a44eac832545b072.jpg",
    ingredients: "200g cooking chorizo, 2 x 400g cans chopped tomatoes, 2 x 400g cans drained butter beans, 1 tub fresh pesto",
    description: "Slice the chorizo and tip into a large saucepan over a medium heat. Fry gently for 5 mins or until starting to turn dark brown. Add the tomatoes and butter beans, bring to the boil, then simmer for 10 mins. Swirl through the pesto, season lightly and ladle into four bowls.")



# Seed your database here

puts "✅ Done seeding!"
