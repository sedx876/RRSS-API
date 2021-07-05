class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string "title"
      t.string "author"
      t.integer "page"
      t.text "content"
      t.string "location"
      t.bigint "user_id", null: false
      t.string "img"
      t.index ["user_id"], name: "index_books_on_user_id"
      t.timestamps
    end
  end
end
