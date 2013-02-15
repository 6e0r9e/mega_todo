require_relative '../../db/config'

class Task < ActiveRecord::Base
  validates_presence_of :text 
end
