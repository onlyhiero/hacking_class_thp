class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
    add_reference :students, :course, foreign_key: true
  end
end
