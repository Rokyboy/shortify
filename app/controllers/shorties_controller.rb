class ShortiesController < ApplicationController
  before_action :set_shorty, only: :show

  def show; end

  def new
    @shorty = Shorty.new
  end

  def create
    @shorty = ShortifyUrlService.new(shorty_params).call

    respond_to do |format|
      if @shorty
        format.html { redirect_to shorty_id_shorties_path(@shorty), notice: 'Shorty was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def set_shorty
    @shorty = Shorty.find(params[:id])
  end

  def shorty_params
    params.fetch(:shorty).require(:url)
  end
end
