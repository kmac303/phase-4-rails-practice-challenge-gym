class MembershipsController < ApplicationController

    def index
        render json: Membership.all 
    end

    def show
        membership = Membership.find(params[:id])
        render json: membership
    end

    def create
        membership = Membership.create!(params.permit(:gym_id, :client_id, :charge))
        render json: membership, status: :created
    end

end
