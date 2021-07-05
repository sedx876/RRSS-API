class CreateTags < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|
      t.string "name"
      t.bigint "book_id", null: false
      t.index ["book_id"], name: "index_tags_on_book_id"
      t.timestamps
    end
  end
end
