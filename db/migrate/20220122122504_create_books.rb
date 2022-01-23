class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.text :description
      t.date :published_date
      t.string :genre
      t.integer :quantity

      t.timestamps
    end
  end
end
