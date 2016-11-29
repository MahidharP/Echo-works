class RemoveColumnFromWorkshops < ActiveRecord::Migration
    def change
        remove_column :workshops, :start_date
        remove_column :workshops, :end_date
    end
end
