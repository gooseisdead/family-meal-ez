class FamilyMeal < ApplicationRecord
    belongs_to :recipe
    belongs_to :employee
end
