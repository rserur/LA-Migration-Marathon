class AddRatings < ActiveRecord::Migration
  def up
    add_column :books, :rating, :numeric, limit: 100
  end

  def down
    remove_column :books, :rating
  end
end
