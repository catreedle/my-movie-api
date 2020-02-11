class Movie < ApplicationRecord
  default_scope { order(visit_counter: :desc) }
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites

  def increase_visit
    self.visit_counter+=1
    save!
  end
end
