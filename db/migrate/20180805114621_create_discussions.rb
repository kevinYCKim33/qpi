class CreateDiscussions < ActiveRecord::Migration[5.1]
  def change
    create_table :discussions do |t|
      t.integer :community_id
      t.integer :user_id
      t.string :title

      t.timestamps
    end
  end
end
