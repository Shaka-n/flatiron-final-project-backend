class FavoritesController < ApplicationController
    def index
        favorites = Favorite.all
        render json: favorites
    end

    def show
        favorite = Favorite.find_by(id: params[:id])
    end

    def create
        found_station_id = Station.find_by(gtfs_stop_id: params[:gtfs_stop_id]).id
        favorite= Favorite.create(user_id: params[:user_id], station_id: found_station_id)

        render json: favorite
    end

    def destroy
        found_station_id = Station.find_by(gtfs_stop_id: params[:gtfs_stop_id]).id
        favorite = Favorite.find_by(user_id: params[:user_id], station_id: found_station_id)
        favorite.destroy
        render json: favorite
    end
end
