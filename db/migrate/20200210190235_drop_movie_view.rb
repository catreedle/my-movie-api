class DropMovieView < ActiveRecord::Migration[5.2]
  def change
    drop_table :movie_views
  end
end
