class GivingAssociationSectionToExam < ActiveRecord::Migration[5.0]

  def change

  	add_reference :sections, :exam, foreign_key: true, index: true
  end
end
