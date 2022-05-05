class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.references :dog_id
      t.references :dog_sitter_id
      t.timestamps
    end
  end
end
