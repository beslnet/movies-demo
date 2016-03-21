class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.integer :year
      t.integer :rating
      t.string :studio

      t.timestamps null: false
    end
  end
end
