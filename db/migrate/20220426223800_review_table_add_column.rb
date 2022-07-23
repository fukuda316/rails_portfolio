class ReviewTableAddColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :private_room, :boolean
    add_column :reviews, :next_seat_distance, :int
    add_column :reviews, :disinfection, :boolean
    add_column :reviews, :mask_customer, :string
    add_column :reviews, :mask_staff, :string
    add_column :reviews, :measures_staff, :int
  end
end
