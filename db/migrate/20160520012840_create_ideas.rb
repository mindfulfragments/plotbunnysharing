class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|

      t.string :title
      t.string :summary
      t.string :plot
      t.string :characters
      t.string :notes

      t.timestamps
    end
  end
end
