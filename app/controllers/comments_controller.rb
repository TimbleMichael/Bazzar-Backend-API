class CommentsController < ApplicationController
    def index
        comment = Comment.all
        render json: comment
    end

    def create
        comment = Comment.create(comment_params)
        if comment
            render json: {
                comment: comment,
                status: :created
            }
        else
            render json: comment.errors
        end
    end

    def show
        if comment
            render json: comment
        else
            render json: comment.errors
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:body, :recipe_id, :user_id)
    end



end