require 'sqlite3'

require_relative '../models/task'
require_relative '../views/todoview'

class ToDoController
  def self.run!
    command = ARGV.shift

    case command
    when "add"
      if ARGV.first.blank?
        ToDoView.error
      else
        Task.add(ARGV.join(' '))
        ToDoView.confirm_add
      end
    when "complete"
      if ARGV.first !~ /\d+/
        ToDoView.error
      else
        Task.complete(ARGV.shift)
        ToDoView.confirm_complete
      end
    when "delete"
      if ARGV.first !~ /\d+/
        ToDoView.error
      else
        Task.delete(ARGV)
        ToDoView.confirm_delete
      end
    when "list"
      ToDoView.display_header
      list = Task.find(:all)
      list.each do |task|
        ToDoView.print_task(task.id, task.text, task.completed)
      end
    when "help"
      ToDoView.help
    else
      ToDoView.error
    end
  end
end
