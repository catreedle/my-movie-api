class AddUserRefToMovieViews < ActiveRecord::Migration[5.2]
  def change
    add_reference :movie_views, :user, foreign_key: true
  end
end
