class CreateRestauraunts < ActiveRecord::Migration[5.0]
  def change
    create_table :restauraunts do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
