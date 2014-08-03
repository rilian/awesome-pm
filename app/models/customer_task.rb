class CustomerTask < ActiveRecord::Base
  belongs_to :customer
  belongs_to :task
end
