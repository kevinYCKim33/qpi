class RemoveCommunityIdFromWorkshops < ActiveRecord::Migration[5.1]
  def change
    remove_column :workshops, :community_id, :string
  end
end
