class ModuleFeature < ActiveRecord::Base
  belongs_to :module
  belongs_to :feature
end
