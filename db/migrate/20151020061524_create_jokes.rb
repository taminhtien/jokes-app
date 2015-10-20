class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.string :content
      t.integer :like, default: 0
      t.integer :dislike, default: 0

      t.timestamps null: false
    end
  end
end
