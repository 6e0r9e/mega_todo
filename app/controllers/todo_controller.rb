require 'sqlite3'

require_relative '../models/task'
# require_relative '../views/todo_view'

class ToDoController


  def self.run!
    command = ARGV.shift

    case command
      when "add"
        Task.add(ARGV.join(' '))
      when "list"
      when "delete"
        Task.delete(ARGV)
      when "complete"
      when "help"
      else
        View.error
    end
  end



end

#temporary driver code for testing
ToDoController.run! 




