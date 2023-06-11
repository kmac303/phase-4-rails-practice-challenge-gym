class GymsController < ApplicationController

    def index
        render json: Gym.all
    end

    def show
        gym = Gym.find_by_id(params[:id])
        if gym
            render json: gym
        else
            render json: {errors: invalid.record.errors}, status: :unprocessable_entity
        end
    end

    def destroy
        # byebug
        gym = Gym.find_by_id(params[:id])
        if gym != nil
            # byebug
            gym.memberships.destroy
            gym.destroy
            head :no_content
        else
            # byebug
            render json: {error: "Gym not found"}, status: :not_found
        end
    end

end
