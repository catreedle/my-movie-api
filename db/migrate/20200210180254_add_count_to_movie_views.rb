class AddCountToMovieViews < ActiveRecord::Migration[5.2]
  def change
    add_column :movie_views, :count, :integer, default: 0
  end
end
