class ToDoView 
  def confirm_add
    puts "Adding task now"
  end

  def confirm_delete
    puts "Deleting your task"
  end

  def display_header
    puts "**********************************************"
    puts "Task List".rjust(20)
    puts "**********************************************"
  end

  def print(task)
    puts task
  end

  def help
  end
end

