class GivingAssociationToSubject < ActiveRecord::Migration[5.0]
	add_reference :subjects, :exam, foreign_key: true, index: true
	add_reference :subjects, :student, foreign_key: true, index: true
	add_reference :subjects, :result, foreign_key: true, index: true

  def change
  end
end
