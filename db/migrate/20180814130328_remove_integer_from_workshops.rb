class RemoveIntegerFromWorkshops < ActiveRecord::Migration[5.1]
  def change
    remove_column :workshops, :integer, :string
  end
end
