class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.string :students_count
      t.string :amount
      t.string :fee
      t.references :college, index: true, foreign_key: true
      t.references :workshop_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
