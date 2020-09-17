class AddUserIdToArticles < ActiveRecord::Migration[5.2]
  def down 
  	add_column :articles, :user_id, :int
  end
end
