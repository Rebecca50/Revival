class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :course_id
      t.string :url

      t.timestamps
    end
  end
end
