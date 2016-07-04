class AddMemoColumnToDesign < ActiveRecord::Migration
  def change
    add_column :designs, :memo, :text
  end
end
