class AddAuthorToNews < ActiveRecord::Migration
  def change
    remove_column :news, :author
    add_column :news, :author_id, :int
  end
end
