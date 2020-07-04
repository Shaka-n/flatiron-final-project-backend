class CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = Comment.find(id: params[:id])
    end

    def create
        comment= Comment.create(user_id:params[:user_id], station_id:params)
        render json: comment
    end

    def destroy
        comment = Comment.find(id: params[:id])
        comment.destroy
        render json: comment
    end
end
