class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :job_title
      t.string :shift

      t.timestamps
    end
  end
end
