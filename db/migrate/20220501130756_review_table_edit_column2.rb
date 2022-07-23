class ReviewTableEditColumn2 < ActiveRecord::Migration[6.1]
  def change
    change_column :reviews, :mask_customer, :float
    change_column :reviews, :mask_staff, :float
  end
end
