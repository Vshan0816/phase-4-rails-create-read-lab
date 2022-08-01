class PlantsController < ApplicationController
    def index
        render json: Plant.all
    end

    def show
        plant = Plant.find_by(id:params[:id])
    end

    def create
        plant = Plant.create(plants_params)
        render json: plant
    end

    private

    def plant_params
        params.permit (:name, :image, :price)
    end
end
