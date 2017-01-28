class CreateSchema < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :email
      t.string :state, default: 'cart'
      t.decimal :total, precision: 8, scale: 2
      t.timestamps
    end
    add_index :orders, :state

    create_table :line_items do |t|
      t.integer :order_id
      t.integer :variant_id
      t.integer :quantity
      t.decimal :price, precision: 8, scale: 2
      t.decimal :total, precision: 8, scale: 2
      t.timestamps
    end
    add_index :line_items, :order_id
    add_index :line_items, :variant_id

    create_table :products do |t|
      t.string :name
      t.string :base_sku
      t.decimal :base_price, precision: 8, scale: 2
      t.text :description
      t.string :image
      t.timestamps
    end

    create_table :variants do |t|
      t.integer :product_id
      t.string :name
      t.string :sku
      t.decimal :price, precision: 8, scale: 2
      t.timestamps
    end
    add_index :variants, :product_id
  end
end
