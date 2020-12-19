class DestinationsController < ApplicationController

    def index
        @destinations = Destination.all
        render json: @destinations

    end

    def show
        @destination = Destination.find(params[:id])
        geocode = @destination.get_geocode.data
        lat = geocode["lat"]
        lon = geocode["lon"]

        render json: @destination, geocode: {lat:lat,lon: lon}
    end

end
