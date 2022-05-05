class RemoveDogIdFromStrolls < ActiveRecord::Migration[5.2]
  def change
    remove_column :strolls, :dog_id_id, :integer
  end
end
