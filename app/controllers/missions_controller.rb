class MissionsController < ApplicationController
  before_action :set_humeur, only: %i[new create]
  bedore_action :set_mission, only: %i[edit update]

  def index
    @missions = Mission.all
    @markers = @missions.geocoded.map do |mission|
      {
        lat: mission.latitude,
        lng: mission.longitude
      }
    end
  end

  # def show
  #   @mission = mission.order("RAND()").first(1)
  # end


  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.new(mission_params)
    @mission.humeur = @humeur
    if @mission.save
      redirect_to humeur_path(@humeur)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @mission.update(params[:mission])
  end

  # def destroy
  # end

  private

  def set_mission
    @mission = Mission.find(params[:mission])
  end

  def set_humeur
    @humeur = Humeur.find(params[:humeur_id])
  end

  def mission_params
    params.require(:mission).permit(:content, :link, :video, :address, :done, photos: [])
  end

end
