class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.references :brand, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.integer :quantity
      t.boolean :status
      t.text :notes

      t.timestamps
    end
  end
end
