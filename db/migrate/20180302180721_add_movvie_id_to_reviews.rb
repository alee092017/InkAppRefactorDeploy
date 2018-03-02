class AddMovvieIdToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :pen_id, :integer
  end
end
