class DropGenres < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :genre_id
    drop_table :genres

    add_column :movies, :genre, :string
  end
end
