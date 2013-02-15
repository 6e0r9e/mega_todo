require 'sqlite3'
require 'pp'

require_relative '../models/task'
# require_relative '../views/todo_view'

class ToDoController


  def self.run!
    command = ARGV.shift

    case command
      when "add"
        Task.add(ARGV.join(' '))
      when "complete"
        Task.complete(ARGV.shift)
      when "delete"
        Task.delete(ARGV)
      when "list"
        PP.pp Task.find :all
        #View.print(Task.find :all) - Add in once View is merged.
      when "help"
      else
        View.error
    end
  end



end

#temporary driver code for testing
ToDoController.run! 




