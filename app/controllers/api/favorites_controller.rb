class Api::FavoritesController < ApplicationController
    before_action :authenticate_user
    before_action :set_movie, only: [:create, :destroy]

    def set_movie
        @movie = Movie.find(params[:id])
    end

    def create
        current_user.favorite!(@movie)
        render json: @movie
    end
    
    def destroy
        current_user.unfavorite!(@movie)
        render json: @movie, status: :ok
    end

    def index
        @movies = current_user.movies
        render json: @movies
    end
end