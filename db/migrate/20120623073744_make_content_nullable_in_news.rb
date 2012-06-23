class MakeContentNullableInNews < ActiveRecord::Migration
  def change
    change_column :news, :content, :text, :null => true
  end
end
