class CreateUsers < ActiveRecord::Migration[5.2]
  def down
    create_table :users do |t|
    	t.string :fistname
    	t.string :lastname
    	t.string :email
    	t.string :age
    	t.string :phone_no
    	t.timestamps
    end
  end
end
