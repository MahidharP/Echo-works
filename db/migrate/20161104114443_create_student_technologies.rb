class CreateStudentTechnologies < ActiveRecord::Migration
  def change
    create_table :student_technologies do |t|
      t.integer :student_id
      t.integer :technology_id

      t.timestamps null: false
    end
  end
end
