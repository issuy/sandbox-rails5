# frozen_string_literal: true

# MapPositionsController
class MapPositionsController < ApplicationController
  before_action :set_map_position, only: %i[show edit update destroy]

  # GET /map_positions
  # GET /map_positions.json
  def index
    @map_positions = MapPosition.all
  end

  # GET /map_positions/1
  # GET /map_positions/1.json
  def show; end

  # GET /map_positions/new
  def new
    @map_position = MapPosition.new
  end

  # GET /map_positions/1/edit
  def edit; end

  # POST /map_positions
  # POST /map_positions.json
  def create
    @map_position = MapPosition.new(map_position_params)

    respond_to do |format|
      if @map_position.save
        format.html { redirect_to @map_position, notice: 'Map position was successfully created.' }
        format.json { render :show, status: :created, location: @map_position }
      else
        format.html { render :new }
        format.json { render json: @map_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /map_positions/1
  # PATCH/PUT /map_positions/1.json
  def update
    respond_to do |format|
      if @map_position.update(map_position_params)
        format.html { redirect_to @map_position, notice: 'Map position was successfully updated.' }
        format.json { render :show, status: :ok, location: @map_position }
      else
        format.html { render :edit }
        format.json { render json: @map_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /map_positions/1
  # DELETE /map_positions/1.json
  def destroy
    @map_position.destroy
    respond_to do |format|
      format.html { redirect_to map_positions_url, notice: 'Map position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_map_position
    @map_position = MapPosition.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def map_position_params
    params.require(:map_position).permit(:title, :latitude, :longitude)
  end
end
