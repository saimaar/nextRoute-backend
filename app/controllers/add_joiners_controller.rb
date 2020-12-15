class AddJoinersController < ApplicationController

    def index
        add_joiners = AddJoiner.all

        render json: add_joiners
    end

    def show
        add_joiner = AddJoiner.find(params[:id])

        render json: add_joiner
    end

    def create
      # byebug
        logged_user_add_joiner = logged_user.bucketlist.add_joiners
        destination = logged_user_add_joiner.find_by(destination_id: params[:destination_id])

        if destination.nil?
            create_add_joiner = add_joiner_params.merge({bucketlist_id: logged_user.bucketlist.id})
            add_joiner = AddJoiner.create(create_add_joiner)
        else
            nil
        end

        render json: add_joiner
    end

    def destroy
        add_joiner = AddJoiner.find(params[:id])

        add_joiner.destroy

        render json: add_joiner
    end

    private

    def add_joiner_params
        params.permit(:destination_id)
    end

end
