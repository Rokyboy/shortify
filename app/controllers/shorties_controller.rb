class ShortiesController < ApplicationController
  before_action :set_shorty, only: [:show, :edit, :update, :destroy]

  # GET /shorties
  # GET /shorties.json
  def index
    @shorties = Shorty.all
  end

  # GET /shorties/1
  # GET /shorties/1.json
  def show
  end

  # GET /shorties/new
  def new
    @shorty = Shorty.new
  end

  # GET /shorties/1/edit
  def edit
  end

  # POST /shorties
  # POST /shorties.json
  def create
    @shorty = Shorty.new(shorty_params)

    respond_to do |format|
      if @shorty.save
        format.html { redirect_to @shorty, notice: 'Shorty was successfully created.' }
        format.json { render :show, status: :created, location: @shorty }
      else
        format.html { render :new }
        format.json { render json: @shorty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shorties/1
  # PATCH/PUT /shorties/1.json
  def update
    respond_to do |format|
      if @shorty.update(shorty_params)
        format.html { redirect_to @shorty, notice: 'Shorty was successfully updated.' }
        format.json { render :show, status: :ok, location: @shorty }
      else
        format.html { render :edit }
        format.json { render json: @shorty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shorties/1
  # DELETE /shorties/1.json
  def destroy
    @shorty.destroy
    respond_to do |format|
      format.html { redirect_to shorties_url, notice: 'Shorty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shorty
      @shorty = Shorty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shorty_params
      params.fetch(:shorty, {})
    end
end
