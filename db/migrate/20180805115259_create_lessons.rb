class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.integer :community_id
      t.string :title
      t.text :link

      t.timestamps
    end
  end
end
