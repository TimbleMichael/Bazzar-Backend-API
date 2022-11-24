class RecipesController < ApplicationController

    def index
        recipe = Recipe.all
        render json: recipe.order("created_at")

    end

    def create
        recipe = Recipe.create(recipe_params)
        if recipe
            render json: recipe
        else
            render json: recipe.errors
        end
    end

    def show
        if recipe
            render json: recipe
        else
            render json: recipe.errors
        end
    end

    private

    def recipe_params
        params.require(:recipe).permit(:title, :serving_size, :cook_time, :prep_time, :method, :ingredients, :user_id)
    end
end