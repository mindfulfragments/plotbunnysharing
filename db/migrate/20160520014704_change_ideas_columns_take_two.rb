class ChangeIdeasColumnsTakeTwo < ActiveRecord::Migration
  def change
    change_column :ideas, :plot, :text
    change_column :ideas, :characters, :text
  end
end
