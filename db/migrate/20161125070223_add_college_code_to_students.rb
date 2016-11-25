class AddCollegeCodeToStudents < ActiveRecord::Migration
    def change
        add_column :students, :college_code, :string
    end
end
