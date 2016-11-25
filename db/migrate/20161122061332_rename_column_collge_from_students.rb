class RenameColumnCollgeFromStudents < ActiveRecord::Migration
    def change
        remove_column :students, :join
        remove_column :students, :collge
    end
end
