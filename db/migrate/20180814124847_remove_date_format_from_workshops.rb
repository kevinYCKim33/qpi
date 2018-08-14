class RemoveDateFormatFromWorkshops < ActiveRecord::Migration[5.1]
  def change
    remove_column :workshops, :start_date, :datetime
    remove_column :workshops, :end_date, :datetime
  end
end
