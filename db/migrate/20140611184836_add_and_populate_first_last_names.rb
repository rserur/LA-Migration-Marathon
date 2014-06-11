class AddAndPopulateFirstLastNames < ActiveRecord::Migration
  def change
    add_column :readers, :first_name, :string
    add_column :readers, :last_name, :string
    Reader.find_each do |reader|
      name = reader.full_name.split
      reader.first_name = name.first
      reader.last_name = name.last
      reader.save!
    end
  end
end
