class User < ApplicationRecord
    has_secure_password

    has_many :favorites, dependent: :destroy
    has_many :movies, through: :favorites

    validates :email, uniqueness: true, presence: true
    validates :password_digest, presence: true, length: { minimum: 6 }

    # creates a new heart row with post_id and user_id
  def favorite!(movie)
    self.favorites.create!(movie_id: movie.id)
  end
  
  # destroys a heart with matching post_id and user_id
  def unfavorite!(movie)
    favorite = self.favorites.find_by_movie_id(movie.id)
    favorite.destroy!
  end
  
  # returns true of false if a post is hearted by user
  def favorite?(movie)
    self.favorites.find_by_movie_id(movie.id)
  end
end
