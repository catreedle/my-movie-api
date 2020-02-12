class AddSummaryToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :summary, :string
  end
end
