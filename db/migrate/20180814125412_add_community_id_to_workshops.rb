class AddCommunityIdToWorkshops < ActiveRecord::Migration[5.1]
  def change
    add_column :workshops, :community_id, :string
    add_column :workshops, :integer, :string
  end
end
