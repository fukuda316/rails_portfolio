class AddShopImage < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :image_name, :string
  end
end
