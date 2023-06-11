class ClientsController < ApplicationController

    def index
        render json: Client.all
    end

    def show
        client = Client.find(params[:id])
        if client.exists?
         render json: client
        else 
            render json: {errors: invalid.record.errors}, status: :unprocessable_entity
        end
    end

end
