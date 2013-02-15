require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateTasks < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :tasks do |t|
      t.string  :text
      t.boolean :completed, :default => false
      t.timestamps
    end
  end
endgit 
