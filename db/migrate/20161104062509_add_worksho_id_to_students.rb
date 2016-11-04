class AddWorkshoIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :workshop_id, :integer
  end
end
