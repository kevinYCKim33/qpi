class DropDiscussions < ActiveRecord::Migration[5.1]
  def up
    drop_table :discussions
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
