class AddColumnUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :prefectures, :integer
  end
end
