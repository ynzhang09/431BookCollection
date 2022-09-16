class UpdateBooks < ActiveRecord::Migration[6.1]
  def change
    drop_table :books
    create_table :books do |t|
      t.string :title
      t.string :author
      t.numeric :price
      t.date :published_date
      t.timestamps
    end
  end
end
