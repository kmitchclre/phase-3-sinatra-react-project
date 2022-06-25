class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/recipes' do
      recipe = Recipe.all
      recipe.to_json
  end


  get '/recipes/:id' do
    recipes = Cookbook.where(id: params[:id]).or(Cookbook.where(cookbook_name: params[:id])).first&.recipes
    recipes.to_json
    #recipe = Recipe.where(cookbook_id: params[:id]))
    #recipe.to_json
  end

  # get '/cookbooks/:id

  # get '/recipes/:id' do
  #     recipe = Recipe.all
  #     recipe.find(params[:id]).to_json

  post '/recipes' do
      recipe = Recipe.create(
        recipe_name: params[:recipe_name],
        img_url: params[:img_url],
        ingredients: params[:ingredients],
        description: params[:description],
        cookbook_id: params[:cookbook_id],
      )
      recipe.to_json
  end

  delete '/recipes/:id' do
    recipe = Recipe.find(params[:id])
    recipe.destroy
    recipe.to_json
  end

  patch '/recipes/:id' do
    recipe = Recipe.find(params[:id])
    recipe.update(
      recipe_name: params[:recipe_name],
      img_url: params[:img_url],
      ingredients: params[:ingredients],
      description: params[description]
    )
    recipe.to_json
  end
end
