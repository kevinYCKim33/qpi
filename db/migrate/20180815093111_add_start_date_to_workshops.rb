class AddStartDateToWorkshops < ActiveRecord::Migration[5.1]
  def change
    add_column :workshops, :start_date, :date
  end
end
