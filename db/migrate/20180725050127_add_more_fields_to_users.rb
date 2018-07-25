class AddMoreFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :occupation, :string
    add_column :users, :grade, :string
    add_column :users, :school, :string
    add_column :users, :location, :string
    add_column :users, :admin, :boolean
  end
end
