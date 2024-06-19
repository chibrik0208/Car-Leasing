class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 10
      t.decimal :leasing_price, precision: 10
      t.string :image

      t.timestamps
    end
  end
end
