class CreateDogSitters < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_sitters do |t|
      t.string :dogsitter_name
      t.timestamps
    end
  end
end