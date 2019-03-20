class AddBookIdToBookReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :book_reviews, :book_id, :integer
  end
end
