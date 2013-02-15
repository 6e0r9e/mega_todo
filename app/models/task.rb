require_relative '../../db/config'

class Task < ActiveRecord::Base
  validates_presence_of :text 

  def self.add(text)
    Task.create(:text => text)
  end

  def self.delete(id)
    Task.destroy(id)
  end

  def self.complete(id)
   Task.update(id, :completed => true) 
  end
end
