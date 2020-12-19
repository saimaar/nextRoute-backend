class DestinationsController < ApplicationController

    def index
        @destinations = Destination.all
        render json: @destinations

    end

    def show
        @destination = Destination.find(params[:id])
        geocode = @destination.get_geocode.data
        render json: @destination, geocode: geocode
    end

end
