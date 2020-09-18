class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.text :address, null: false
      t.integer :age, null: false

      t.timestamps
    end
  end
end
