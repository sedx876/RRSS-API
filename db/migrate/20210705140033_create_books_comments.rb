class CreateBooksComments < ActiveRecord::Migration[6.1]
  def change
    create_table :books_comments do |t|
      t.bigint "book_id", null: false
      t.bigint "comment_id", null: false
      t.timestamps
    end
  end
end
