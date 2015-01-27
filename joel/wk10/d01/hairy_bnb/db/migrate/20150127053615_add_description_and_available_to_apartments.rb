class AddDescriptionAndAvailableToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :description, :text
    add_column :apartments, :available, :boolean
  end
end
