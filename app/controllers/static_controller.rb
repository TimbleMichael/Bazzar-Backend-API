class StaticController < ApplicationController
    def home
        render json: { status: "Its alive" }
    end
end