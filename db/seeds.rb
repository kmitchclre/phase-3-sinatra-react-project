puts "🌱 Seeding spices..."

Cookbook.destroy_all
User.destroy_all
Recipe.destroy_all

puts "Creating users..."

user_1 = User.create(user_name: user1)
user_2 = User.create(user_name: user2)
user_3 = User.create(user_name: user3)


puts "Creating cookbooks..."
chicken_parm = Cookbook.create(name: "Chicken Parmesan", img_url: "https://hallmark.brightspotcdn.com/dims4/default/58dd81f/2147483647/strip/true/crop/2000x2000+427+0/resize/400x400!/quality/90/?url=http%3A%2F%2Fhallmark-channel-brightspot.s3.amazonaws")
spaghetti = Cookbook.create(name: "Spaghetti", img_url: "https://default-mygourmetcreatio.netdna-ssl.com/wp-content/uploads/2018/02/Instant-Pot-Spaghetti-4-of-5-400x400.jpg")
butter_bean_and_chorizo_stew = Cookbook.create(name: "Butter bean & chorizo stew", img_url: "https://media.riverford.co.uk/images/chorizo-kale-and-butterbean-stew-400x400-4549f18d3043efc4a44eac832545b072.jpg" )


puts "Creating recipes..."

Recipe.create(
    id: 1, 
    name: "Chicken Parm", 
    img_url: "https://hallmark.brightspotcdn.com/dims4/default/58dd81f/2147483647/strip/true/crop/2000x2000+427+0/resize/400x400!/quality/90/?url=http%3A%2F%2Fhallmark-channel-brightspot.s3.amazonaws.com%2F1f%2Fcd%2F5b190cc2efe1d554f93d3cbf89e2%2Fhome-family-chicken-parmesan.jpg" ,
    ingredients: "4 Boneless Chicken Breasts, 1 large egg, 0.5 cup milk, 1 cup seasoned breadcrumbs, 2 to 3 tablespoons extra virgin olive oil, 8 slices mozzarella cheese, 1 jar pasta sauce, 0.5 grated Parmesan cheese, 8 ounces spaghetti", 
    recipe:  ,)

Recipe.create(
    id: 2,
    name: "Spaghetti",
    img_url: "https://default-mygourmetcreatio.netdna-ssl.com/wp-content/uploads/2018/02/Instant-Pot-Spaghetti-4-of-5-400x400.jpg" ,
    ingredients: "1 pound ground beef, 1 medium onion, 4 cloves minced garlic, 1 small green bell pepper diced, 1 can diced tomatoes, 1 can tomato sauce, 2 teaspoons dried oregano, 2 teaspoons dried basil, 1 teaspoon salt, 1/2 teaspoon ground black pepper" ,
    recipe: ,
    
)

Recipe.create(
    id: 3
    name: "Butter bean & chorizo stew",
    img_url: "https://media.riverford.co.uk/images/chorizo-kale-and-butterbean-stew-400x400-4549f18d3043efc4a44eac832545b072.jpg"
    ingredients: "200g cooking chorizo, 2 x 400g cans chopped tomatoes, 2 x 400g cans drained butter beans, 1 tub fresh pesto" ,
    recipe: "Slice the chorizo and tip into a large saucepan over a medium heat. Fry gently for 5 mins or until starting to turn dark brown. Add the tomatoes and butter beans, bring to the boil, then simmer for 10 mins. Swirl through the pesto, season lightly and ladle into four bowls.",
    
)



# Seed your database here

puts "✅ Done seeding!"
