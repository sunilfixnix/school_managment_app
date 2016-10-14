class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
    	t.string :name
    	t.text :address
    	t.string :team 
    	t.string :course_offer

      t.timestamps
    end
  end
end
