class ChangeIdeasColumns < ActiveRecord::Migration
  def change
    change_column :ideas, :plot, :text
  end
end
