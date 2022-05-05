class RemoveStrolls < ActiveRecord::Migration[5.2]
  def change
    drop_table :strolls
  end
end
