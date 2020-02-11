class AddMovieRefToMovieViews < ActiveRecord::Migration[5.2]
  def change
    add_reference :movie_views, :movie, foreign_key: true
  end
end
