module ToDoView 

  RESET ="\e[0m"
  GREEN = "\e[0;32m"
  RED = "\e[0;31m"
  PURPLE = "\e[0;35m"
  BOLD_PURPLE = "\e[1;95m"
  CYAN = "\e[0;36m"
  BOLD_CYAN = "\e[1;96m"

  def self.confirm_add
    puts "Adding task now...."
  end

  def self.confirm_delete
    puts "Deleting your task...."
  end

  def self.confirm_complete
    puts "Task is complete."
  end
  
  def self.display_header
    clear_screen!
    move_to_home!
    color_print("**********************************************", BOLD_PURPLE)
    color_print("Task List".rjust(25), BOLD_CYAN)
    color_print("**********************************************", BOLD_PURPLE)
  end

  def self.print_task(id, task, status)
     puts "#{id}. #{task}, #{status}"
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

  def self.clear_screen!
    print "\e[2J"
  end
 
  def self.move_to_home!
    print "\e[H"
  end

  private
  def self.color_print(string, color)
    puts "#{color}#{string}#{RESET}"
  end
end
