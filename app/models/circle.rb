class Circle < ActiveRecord::Base
  has_many :user
  has_many :post
end
