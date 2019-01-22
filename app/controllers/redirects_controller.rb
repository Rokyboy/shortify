class RedirectsController < ApplicationController
    before_action :set_shorty, only: %i(show)

    def show
      redirect_to @shorty.url
    end

    private

    def set_shorty
      @shorty = Shorty.find_by(short_url: params[:id])
    end
end
