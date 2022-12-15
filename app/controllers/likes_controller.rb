class LikesController < ApplicationController

    def index
        like = Like.all
        render json: like
    end

    def create
        like = Like.create(like_params)

        if like
            render json: like
        end
    end

    def destroy
        like = Like.find(params[:id])

        if like
            like.destroy
        end
    end

    private

    def like_params
        params.require(:like).permit(:recipe_id, :user_id)
    end
end