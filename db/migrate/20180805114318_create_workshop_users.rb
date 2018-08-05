class CreateWorkshopUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :workshop_users do |t|
      t.integer :workshop_id
      t.integer :user_id

      t.timestamps
    end
  end
end
