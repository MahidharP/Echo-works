class AddCodeToColleges < ActiveRecord::Migration
  def change
    add_column :colleges, :code, :string
  end
end
