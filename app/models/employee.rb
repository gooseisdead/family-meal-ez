class Employee < ApplicationRecord
    has_many :family_meals
    has_many :recipes, through: :family_meals

    has_secure_password

   
end
