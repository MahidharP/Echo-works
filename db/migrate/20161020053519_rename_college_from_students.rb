class RenameCollegeFromStudents < ActiveRecord::Migration
  def change
    rename_column :students, :consultant, :consult
  end
end
