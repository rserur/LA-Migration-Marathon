class Checkout < ActiveRecord::Base
  belongs_to :book
  belongs_to :reader, :foreign_key => 'reader_id'
end
