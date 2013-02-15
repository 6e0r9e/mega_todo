require 'sqlite3'
require 'pp'

require_relative '../models/task'
require_relative '../views/todo_view'

class ToDoController
  def self.run!
    command = ARGV.shift

    case command
      when "add"
        Task.add(ARGV.join(' '))
        ToDoView.confirm_add
      when "complete"
        Task.complete(ARGV.shift)
        ToDoView.confirm_complete
      when "delete"
        Task.delete(ARGV)
        ToDoView.confirm_delete
      when "list"
        PP.pp Task.find :all
        #ToDoView.print(Task.find :all) - Add in once ToDoView is merged.
      when "help"
        ToDoView.help
      else
        ToDoView.error
    end
  end
end

#temporary driver code for testing
ToDoController.run!
