class AddImageToRestauraunts < ActiveRecord::Migration[5.0]
  def change
    add_column :restauraunts, :image, :string
  end
end
