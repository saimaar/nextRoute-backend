class ThingsToDosController < ApplicationController

    def index
        @things_to_dos = ThingsToDo.all

        render json: @things_to_dos
    end

    def show
        @things_to_do = ThingsToDo.find(params[:id])

        render json: @things_to_do
    end

end
