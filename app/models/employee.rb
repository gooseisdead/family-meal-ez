class Employee < ApplicationRecord
    has_many :family_meals
    has_many :recipes, through: :family_meals

    has_secure_password

    validates :name, :shift, :job_title, presence: true
    
    

end
