class CreateLights < ActiveRecord::Migration[5.1]
  def change
    create_table :lights do |t|
      t.integer :light_id
      t.integer :brightness
      t.integer :temerature
      t.boolean :on

      t.timestamps
    end
  end
end
