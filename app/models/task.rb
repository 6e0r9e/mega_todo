require_relative '../../db/config'

class Task < ActiveRecord::Base
  validates_presence_of :text 

  def self.add(text)
    Task.new(:text => text).save!
  end

  def self.delete(id)
    Task.destroy(id)
  end
end
