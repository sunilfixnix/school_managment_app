class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
    	t.string :status
    	t.float :marks
    	t.string :division

    	t.references :subject, foreign_key: true, index: true
    	t.references :student, foreign_key: true, index: true
    	t.references :standard, foreign_key: true, index: true


      t.timestamps
    end
  end
end
