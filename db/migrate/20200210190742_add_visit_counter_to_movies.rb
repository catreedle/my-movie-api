class AddVisitCounterToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :visit_counter, :integer, default: 0
  end
end
