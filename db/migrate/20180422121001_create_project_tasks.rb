class CreateProjectTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :project_tasks do |t|
      t.string :name
      t.integer :status
      t.date :dateline

      t.timestamps
    end
  end
end
