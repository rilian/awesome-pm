class Module < ActiveRecord::Base
  belongs_to :project

  has_many :module_features
  has_many :features, through: :module_features

  has_many :module_tasks
  has_many :tasks, through: :module_tasks
end
