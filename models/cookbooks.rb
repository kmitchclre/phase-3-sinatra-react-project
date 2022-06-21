class CookBook < ActiveRecord::Base
    has_many :users, through: :recipes
end