class Users < ActiveRecord::Base
    has_many :recipes
    has_many :cookbooks, through: :recipes
