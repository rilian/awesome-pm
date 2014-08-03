class Story < ActiveRecord::Base
  belongs_to :feature

  has_many :customer_stories
  has_many :customers, through: :customer_stories

  has_many :tasks
end
