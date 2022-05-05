class CreateStrollsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.references :dog_sitter
      t.timestamps
    end
  end
end
