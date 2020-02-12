class Api::MoviesController < ApplicationController
    before_action :authenticate_user, only: [:create, :update, :destroy]
    before_action :set_movie, only: [:show, :update, :destroy]


    def index
        @movies = Movie.all
        
        render json: @movies
    end

    def show
        render json: @movie

        @movie.increase_visit
    end

    def show_by_genre
        @movies = Movie.where(genre: params[:genre].downcase)

        render json: @movies
    end

    def find_by_title
        variable = params[:title].downcase
        @movies = Movie.where("lower(title) like ?", "%#{variable}%")
        render json: @movies
    end

    def create
        if current_user.admin
            @movie = Movie.new(movie_params)
            if @movie.save
                render json: @movie, status: :created
            else
                render json: @movie.errors, status: :unprocessable_entity
            end
        else
            render json: @user.errors, status: :unauthorized
        end
    end

    def update
        if current_user.admin
            if @movie.update(movie_params)
                render json: @movie, status: :ok
            else
                render json: @movie.errors, status: :unprocessable_entity
            end
        else
            render json: @user.errors, status: :unauthorized
        end
    end

    def destroy
        if current_user.admin
            if @movie.destroy
                render json: @movie, status: :ok
            else
                render json: @movie.errors, status: :unprocessable_entity
            end
        else
            render json: @user.errors, status: :unauthorized
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def movie_params
        params.permit(:title, :summary, :genre, :cast, :producer, :country, :status, :image)
    end

    
end
