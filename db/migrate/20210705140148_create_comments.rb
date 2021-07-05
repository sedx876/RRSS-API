class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text "content"
      t.bigint "user_id", null: false
      t.integer "book_id"
      t.index ["user_id"], name: "index_comments_on_user_id"
      t.timestamps
    end
  end
end
