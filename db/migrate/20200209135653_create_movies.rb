class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.references :genre, foreign_key: true
      t.text :cast
      t.string :producer
      t.string :country
      t.string :status

      t.timestamps
    end
  end
end
