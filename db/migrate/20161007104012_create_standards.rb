class CreateStandards < ActiveRecord::Migration[5.0]
  def change
    create_table :standards do |t|
    	t.string :name
    	t.references :school, foreign_key: true, index: true

      t.timestamps
    end
  end
end
