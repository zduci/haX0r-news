class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :author, :null => false
      t.string :title, :null => false
      t.text :content, :null => false

      t.timestamps
    end
  end
end
