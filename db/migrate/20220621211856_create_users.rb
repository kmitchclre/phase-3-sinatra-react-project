class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :user_name
  end
end
