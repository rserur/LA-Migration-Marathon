class Category < ActiveRecord::Base
  has_many :books, through: :categorizations
end
