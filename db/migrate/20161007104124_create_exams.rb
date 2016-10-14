class CreateExams < ActiveRecord::Migration[5.0]
  def change
    create_table :exams do |t|
    	t.string :name
    	t.datetime :start_date
    	t.datetime :end_date

    t.references :standard, foreign_key: true, index: true
    t.references :subject, foreign_key: true, index: true




      t.timestamps
    end
  end
end
