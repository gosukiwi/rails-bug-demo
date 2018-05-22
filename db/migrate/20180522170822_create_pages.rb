class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.integer :book_id
      t.text :body

      t.timestamps
    end
    add_index :pages, :book_id
  end
end
