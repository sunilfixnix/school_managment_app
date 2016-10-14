class GivingAssociationExam < ActiveRecord::Migration[5.0]
  def change
  	add_reference :exams, :section, foreign_key: true, index: true
  end
end
