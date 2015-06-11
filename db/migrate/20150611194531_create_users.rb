class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.integer :gender, default: 0
    	t.string :name
    	t.string :username 
    	t.string :password_digest
    	t.integer :age
    	t.text :bio
      t.timestamps null: false
    end
  end
end
