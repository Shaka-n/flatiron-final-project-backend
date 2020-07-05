class FavoritesController < ApplicationController
    def index
        favorites = Favorite.all
        render json: favorites
    end

    def show
        favorite = Favorite.find_by(id: params[:id])
    end

    def create
        favorite= Favorite.create(user_id:params[:user_id], station_id:params)
        render json: favorite
    end

    def destroy
        favorite = Favorite.find_by(id: params[:id])
        favorite.destroy
        render json: favorite
    end
end
