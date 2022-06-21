class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.string :img_url
      t.string :ingredients
      t.string :description
      t.belongs_to :cookbooks
      t.belongs_to :users
  end
end
