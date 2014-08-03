class Feature < ActiveRecord::Base
  belongs_to :project

  has_many :customer_features
  has_many :customers, through: :customer_features

  has_many :stories

  has_many :module_features
  has_many :modules, through: :module_feature
end
