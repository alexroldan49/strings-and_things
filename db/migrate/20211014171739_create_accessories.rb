class CreateAccessories < ActiveRecord::Migration[6.1]
  def change
    create_table :accessories do |t|
      t.string :name
      t.string :image
      t.float :price
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
