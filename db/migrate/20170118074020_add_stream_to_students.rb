class AddStreamToStudents < ActiveRecord::Migration
  def change
    add_column :students, :stream, :string
  end
end
