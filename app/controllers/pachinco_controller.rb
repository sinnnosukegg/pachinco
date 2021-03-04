class PachincoController < ApplicationController
  before_action :set_pachinco, only: %i[ show edit update destroy ]

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @pachinco = Pachinco.new(pachinco_params)

    respond_to do |format|
      if @meeting.save
        format.html { redirect_to @meeting, notice: "Meeting was successfully created." }
        format.json { render :show, status: :created, location: @meeting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @pachinco.update(pachinco_params)
        format.html { redirect_to @meeting, notice: "Pachinco was successfully updated." }
        format.json { render :show, status: :ok, location: @pachinco }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pachinco.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pachinco.destroy
    respond_to do |format|
      format.html { redirect_to meetings_url, notice: "Meeting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_pachinco
      @pachinco = Pachinco.find(params[:id])
    end

    def pachinco_params
      params.require(:pachinco).permit(:name, :start_time)
    end
end