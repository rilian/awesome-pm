class Task < ActiveRecord::Base
  belongs_to :story

  has_many :customer_tasks
  has_many :customers, through: :customer_tasks

  has_many :module_tasks
  has_many :modules, through: :module_tasks
end
