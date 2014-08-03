class Task < ActiveRecord::Base
  belongs_to :story

  has_many :customer_tasks
  has_many :customers, through: :customer_tasks

  has_many :project_tasks
  has_many :projects, through: :project_tasks
end
