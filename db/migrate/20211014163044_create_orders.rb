class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :order_date
      t.string :status
      t.float :order_total
      t.string :shipping

      t.timestamps
    end
  end
end
