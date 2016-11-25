class RenameColumnCollgeFromStudents < ActiveRecord::Migration
    def change
        rename_column :students, :join, :joining
        remove_column :students, :collge
    end
end
