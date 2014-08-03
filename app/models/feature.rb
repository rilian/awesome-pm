class Feature < ActiveRecord::Base
  belongs_to :product

  has_many :customer_features
  has_many :customers, through: :customer_features

  has_many :stories

  has_many :project_features
  has_many :projects, through: :project_feature
end
