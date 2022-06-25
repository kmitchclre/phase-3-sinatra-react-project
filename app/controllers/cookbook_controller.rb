class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'


    get '/cookbooks' do
        cookbook = Cookbook.all
        cookbook.to_json(include: :recipes)
    end

    get '/cookbooks/:id' do
        cookbook = Cookbook.find(params[:id])
        cookbook.to_json(include: :recipes)
    end
end