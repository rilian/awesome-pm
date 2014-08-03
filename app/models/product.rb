class Product < ActiveRecord::Base
  has_many :customers
  has_many :features
  has_many :projects
end
