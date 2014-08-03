class CustomerFeature < ActiveRecord::Base
  belongs_to :customer
  belongs_to :feature
end
