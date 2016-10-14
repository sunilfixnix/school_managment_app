class CreateStudentAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :student_attendances do |t|
    	t.string :status
    	t.references :student, foreign_key: true, index: true

      t.timestamps
    end
  end
end
