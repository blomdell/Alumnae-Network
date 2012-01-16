class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.string :content
      t.date :date

      t.timestamps
    end
  end
end
