class CreateCookbooks < ActiveRecord::Migration[6.1]
  def change
    create_table :cookbooks do |t|
      t.string :cookbook_name
      t.string :img_url
  end
end
end
