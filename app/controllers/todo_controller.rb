require 'sqlite3'

require_relative '../models/task'
# require_relative '../views/todo_view'

DATAFILE = '../../db/tasks.sqlite3'

class ToDoController
  def initialize
    # Task.new(:text => "walk cat").save!
    # @view = ToDoView.new
  end


end

mega_controller = ToDoController.new
