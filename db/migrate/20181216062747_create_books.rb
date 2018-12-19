class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :jancode
      t.string :author
      t.date :release
      t.integer :price
      t.string :genre
      t.string :publisher

      t.timestamps
    end
  end
end
