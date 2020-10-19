class CreateFamilyMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :family_meals do |t|
      t.integer :recipe_id
      t.integer :employee_id

      t.timestamps
    end
  end
end
