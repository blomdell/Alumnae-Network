class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	  t.string :token
	  t.string :provider
      t.string :uid
      t.string :name
      t.string :email
      t.string :number
      t.string :location
      t.string :program
      t.string :organization
      t.string :title
      t.string :twitterid
      t.string :linkedinid
      t.text :about

      t.timestamps
    end
  end
end
