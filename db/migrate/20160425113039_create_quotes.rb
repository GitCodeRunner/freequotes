class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :string
      t.string :name
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
