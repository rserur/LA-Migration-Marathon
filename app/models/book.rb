class Book < ActiveRecord::Base
  has_many :categories, through: :categorizations
  has_many :checkouts
end
