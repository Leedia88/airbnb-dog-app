class CreateDogsStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs_strolls do |t|
      t.references :dog, index: true
      t.references :stroll, index: true
      t.timestamps
    end
  end
end
