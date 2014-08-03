class Customer < ActiveRecord::Base
  belongs_to :project

  has_many :customer_features
  has_many :features, through: :customer_features

  has_many :customer_stories
  has_many :stories, through: :customer_stories

  has_many :customer_tasks
  has_many :tasks, through: :customer_tasks
end
