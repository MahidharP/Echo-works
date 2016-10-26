class RenameCollegeCodeFromStudents < ActiveRecord::Migration
  def change
    rename_column :students, :college_code, :collge 
  end
end
