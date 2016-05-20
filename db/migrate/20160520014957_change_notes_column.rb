class ChangeNotesColumn < ActiveRecord::Migration
  def change
    change_column :ideas, :notes, :text
  end
end
