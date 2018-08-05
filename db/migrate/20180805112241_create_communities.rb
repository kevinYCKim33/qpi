class CreateCommunities < ActiveRecord::Migration[5.1]
  def change
    create_table :communities do |t|
      t.string :title
      t.text :summary
      t.string :prereqs
      t.string :text
      t.text :objectives

      t.timestamps
    end
  end
end
