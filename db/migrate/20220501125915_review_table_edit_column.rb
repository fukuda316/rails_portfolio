class ReviewTableEditColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :reviews, :mask_customer, :boolean
    change_column :reviews, :mask_staff, :boolean
  end
end
