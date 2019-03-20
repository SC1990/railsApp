class CreateBookreviews < ActiveRecord::Migration[5.2]
  def change
    create_table :book_reviews do |t|
      t.integer :book_rating
      t.text :user_comment

      t.timestamps
    end
  end
end
