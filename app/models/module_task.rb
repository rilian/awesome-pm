class ModuleTask < ActiveRecord::Base
  belongs_to :module
  belongs_to :task
end
