class BucketlistsController < ApplicationController

    def index
        @bucketlists = Bucketlist.all

        render json: @bucketlists
    end

    def show
        @bucketlist = Bucketlist.find(params[:id])
        # byebug
        render json: @bucketlist
    end

end
