module ToDoView 
  def self.confirm_add
    puts "Adding task now"
  end

  def self.confirm_delete
    puts "Deleting your task"
  end

  def self.display_header
    puts "**********************************************"
    puts "Task List".rjust(20)
    puts "**********************************************"
  end

  def self.print(task, status, id)
    puts 
  end

  def self.error
    puts "Invalid command. Type <help> for possible commands."
  end

  def self.help
    puts "Here are the commands:"
    puts "  add <text of task>\tAdd a new task"
    puts "  list\t\t\tList all tasks"
    puts "  delete <task_id>\tDelete a task by ID number"
    puts "  complete <task_id>\tMark task as complete by ID number"
    puts "  help\t\t\tDisplay this message."
  end
end


ToDoView.display_header
