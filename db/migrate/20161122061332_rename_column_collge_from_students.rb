class RenameColumnCollgeFromStudents < ActiveRecord::Migration
  def change
    rename_column :students, :collge, :college
    rename_column :students, :join, :joining 
  end
end
