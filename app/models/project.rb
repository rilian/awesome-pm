class Project < ActiveRecord::Base
  has_many :customers
  has_many :features
  has_many :modules
end
