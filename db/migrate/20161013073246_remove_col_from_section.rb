class RemoveColFromSection < ActiveRecord::Migration[5.0]
  def change
  	remove_column :sections, :exam_id, :integer
  end
end
