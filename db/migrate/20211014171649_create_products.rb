class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.boolean :used
      t.float :price
      t.string :description
      t.string :brand
      t.string :image
      t.string :back_image
      t.string :third_image
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
