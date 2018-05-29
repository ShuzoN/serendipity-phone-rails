class CreateHeadPhones < ActiveRecord::Migration[5.2]
  def change
    create_table :head_phones do |t|
      t.string :name
      t.string :tendency
      t.integer :price

      t.timestamps
    end
  end
end
