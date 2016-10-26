class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.string :college_code
      t.boolean :beneficial
      t.text :feedback
      t.boolean :join
      t.boolean :consultant
      t.text :suggestion


      t.timestamps null: false
    end
  end
end
