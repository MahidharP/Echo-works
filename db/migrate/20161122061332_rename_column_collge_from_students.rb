class RenameColumnCollgeFromStudents < ActiveRecord::Migration
    def change
        rename_column :students, :join, :joining
        rename_column :students, :collge, :college_code
    end
end
