class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :comment_id
      t.string :user_id
      t.string :integer

      t.timestamps
    end
  end
end
