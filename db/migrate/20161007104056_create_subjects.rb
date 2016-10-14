class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
    	t.string :name
    	t.text :description
    	t.integer :credit

    	      t.references :teacher, foreign_key: true, index: true
    	      t.references :standard, foreign_key: true, index: true


      t.timestamps
    end
  end
end
