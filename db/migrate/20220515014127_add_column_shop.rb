class AddColumnShop < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :prefecture, :integer
  end
end
