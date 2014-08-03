class Project < ActiveRecord::Base
  belongs_to :product

  has_many :project_features
  has_many :features, through: :project_features

  has_many :project_tasks
  has_many :tasks, through: :project_tasks
end
