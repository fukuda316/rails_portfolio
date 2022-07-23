class ReviewEdit < ActiveRecord::Migration[6.1]
  def change
    change_column :reviews, :next_seat_distance, :float
    change_column :reviews, :measures_staff, :float
  end
end
