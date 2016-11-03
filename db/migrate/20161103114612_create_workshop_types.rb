class CreateWorkshopTypes < ActiveRecord::Migration
  def change
    create_table :workshop_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
