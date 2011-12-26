class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :name
      t.string :area
      t.string :program
      t.string :organization
      t.string :country
      t.string :title
      t.string :twitterid
      t.string :linkedinid
      t.text :about

      t.timestamps
    end
  end
end
