class AddCommunityIdToWorkshops < ActiveRecord::Migration[5.1]
  def change
    add_column :workshops, :community_id, :integer
  end
end
