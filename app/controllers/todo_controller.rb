require 'sqlite3'

require_relative '../models/task'
require_relative '../views/todoview'

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
        ToDoView.display_header
        list = Task.find :all
        list.each do |task|
          ToDoView.print(task.id, task.text, task.completed)
        end
      when "help"
        ToDoView.help
      else
        ToDoView.error
    end
  end
end

#temporary driver code for testing
ToDoController.run!
