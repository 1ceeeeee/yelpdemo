class AddRestaurauntIdToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :restauraunt_id, :integer
  end
end
