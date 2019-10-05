class PlacesController < ApplicationController

    def index
        @place = Place.all
        .paginate(page: params[:page], per_page: 10)
    end

    def new
        @place = Place.new
    end
end
