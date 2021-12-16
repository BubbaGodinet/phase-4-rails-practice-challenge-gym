class GymsController < ApplicationController

   

    def index 
        gyms = Gym.all
        render json: gyms
    end

    def destroy
        gym = Gym.find_by(id: params[:id])
        if gym
            gym.destroy
            render json: {}, status: :no_content
        else
            render json: { error: "Gym not found" }, status: :not_found
        end
    end

    def show
        gym = Gym.find_by(id: params[:id])
        if gym
        render json: gym
        else 
            render json: { error: "Gym not found" }, status: :not_found
    end

   
end
end
