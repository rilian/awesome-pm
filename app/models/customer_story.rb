class CustomerStory < ActiveRecord::Base
  belongs_to :customer
  belongs_to :story
end
