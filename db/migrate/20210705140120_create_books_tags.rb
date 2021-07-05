class CreateBooksTags < ActiveRecord::Migration[6.1]
  def change
    create_table :books_tags do |t|
      t.bigint "book_id", null: false
      t.bigint "tag_id", null: false
      t.timestamps
    end
  end
end
