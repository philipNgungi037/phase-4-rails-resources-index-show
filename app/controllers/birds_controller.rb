class BirdsController < ApplicationController
    def index
        render json:Bird.all, except: [:created_at, :updated_at]
    end
    def show
        bird = Bird.find_by(id: params[:id])
        if bird
        render json: bird, except: [:created_at, :updated_at]
        else
            render json: {error:'Bird not found'}, status: :not_found
        end
    end
end
