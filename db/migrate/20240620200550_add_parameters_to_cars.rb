class AddParametersToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :color, :string
    add_column :cars, :year, :integer
    add_column :cars, :mileage, :integer
    add_column :cars, :transmission_type, :string
    add_column :cars, :engine_type, :string
    add_column :cars, :exterior, :string
    add_column :cars, :safety_systems, :string
    add_column :cars, :airbags, :string
    add_column :cars, :interior, :string
    add_column :cars, :comfort, :string
    add_column :cars, :heating, :string
    add_column :cars, :climate, :string
    add_column :cars, :multimedia, :string
    add_column :cars, :headlights, :string
    add_column :cars, :body_type, :string
    add_column :cars, :engine_capacity, :decimal
    add_column :cars, :engine_power, :integer
    add_column :cars, :drivetrain, :string
    add_column :cars, :fuel_consumption, :decimal
    add_column :cars, :city, :string
  end
end
