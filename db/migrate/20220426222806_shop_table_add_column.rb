class ShopTableAddColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :location, :string
    add_column :shops, :genre, :string
    add_column :shops, :price, :string
    add_column :shops, :opening_hours, :string
    add_column :shops, :private_room, :boolean
    add_column :shops, :introduction, :string
  end
end
