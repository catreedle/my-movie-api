class CreateMovieViews < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_views do |t|

      t.timestamps
    end
  end
end
