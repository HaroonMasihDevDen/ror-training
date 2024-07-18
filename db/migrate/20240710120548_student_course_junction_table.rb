class StudentCourseJunctionTable < ActiveRecord::Migration[7.1]
  def change
    create_table :courses_students do |t|
      t.belongs_to :course
      t.belongs_to :student

      t.timestamps
    end

  end
end
