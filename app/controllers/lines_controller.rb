class LinesController < ApplicationController
    def index
        lines = Line.all
        render json: lines
    end
    
    def show
        line = Line.find(id: params[:id])
        render json: line
    end
end
