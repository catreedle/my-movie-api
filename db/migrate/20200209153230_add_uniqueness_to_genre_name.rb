class AddUniquenessToGenreName < ActiveRecord::Migration[5.2]
  def change
    change_column :genres, :name, :string, unique: true
  end
end
