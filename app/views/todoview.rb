module ToDoView 
  require 'artii'
  RESET ="\e[0m"
  GREEN = "\e[0;32m"
  RED = "\e[0;31m"
  YELLOW = "\e[0;33m"
  PURPLE = "\e[0;35m"
  BOLD_PURPLE = "\e[1;95m"
  CYAN = "\e[0;36m"
  BOLD_CYAN = "\e[1;96m"

  def self.confirm_add
    clear_screen!
    move_to_home!
    color_print("\n\nAdding task now....", RED)
    rainbow_triangle
    color_print("Your task has been added!\n\n", PURPLE)
  end

  def self.confirm_delete
    clear_screen!
    move_to_home!
    color_print("\n\nDeleting your task....", RED)
    rainbow_triangle
    color_print("Your task has been deleted!\n\n", PURPLE)
  end

  def self.confirm_complete
    color_print("Task is complete.", GREEN)
  end
  
  def self.display_header
    clear_screen!
    move_to_home!
    color_print(`artii 'MEGA TASK'`, YELLOW)
    sleep(0.5)
    color_print("**********************************************", BOLD_PURPLE)
    color_print("Task List".rjust(25), BOLD_CYAN)
    color_print("**********************************************", BOLD_PURPLE)
  end

  def self.interpret_task_status(status)
    if status == true 
      '[ ]'
    elsif status == false 
      '[x]'
    end 
  end 

  def self.print_task(id, task, status)
    color_print("#{interpret_task_status(status)}  #{id}. #{task}", CYAN)
    sleep(0.1)
  end

  def self.error
    color_print("Invalid command. Type <help> for possible commands.", RED)
  end

  def self.help
    color_print("Here are the commands:
      add <text of task>\tAdd a new task
      list\t\t\tList all tasks
      delete <task_id>\t\tDelete a task by ID number
      complete <task_id>\tMark task as complete by ID number
      help\t\t\tDisplay this message.", PURPLE)
  end

  private
  def self.clear_screen!
    print "\e[2J"
  end
 
  def self.move_to_home!
    print "\e[H"
  end

  def self.color_print(string, color)
    puts "#{color}#{string}#{RESET}"
  end

  def self.rainbow_triangle
    color_print('*', RED)
    sleep(0.3)
    color_print('**', YELLOW)
    sleep(0.3)
    color_print('***', GREEN)
    sleep(0.3)
    color_print('****', CYAN)
    sleep(0.3)
    color_print('*****', PURPLE)
    sleep(0.3)
  end
end
