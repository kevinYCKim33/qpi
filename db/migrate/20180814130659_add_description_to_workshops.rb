class AddDescriptionToWorkshops < ActiveRecord::Migration[5.1]
  def change
    add_column :workshops, :description, :string
  end
end
