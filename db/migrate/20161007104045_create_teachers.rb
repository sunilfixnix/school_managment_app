class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
    	t.string :first_name
    	t.string :last_name
    	t.integer :age
    	t.string :email_id
    	t.integer :phone_no
    	t.text :address
    	t.string :area_of_expertise
    	t.string :qualification
    	t.string :experience

      t.references :standard, foreign_key: true, index: true

      #t.references :section, foreign_key: true, index: true

      #t.references :subject, foreign_key: true, index: true



      t.timestamps
    end
  end
end
