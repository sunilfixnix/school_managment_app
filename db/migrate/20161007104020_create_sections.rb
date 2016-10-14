class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
    	t.string :name
    	t.references :standard, foreign_key: true, index: true

      t.timestamps
    end
  end
end
