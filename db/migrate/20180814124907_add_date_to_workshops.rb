class AddDateToWorkshops < ActiveRecord::Migration[5.1]
  def change
    add_column :workshops, :date, :string
  end
end
