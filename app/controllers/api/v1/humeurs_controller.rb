class Api::V1::HumeursController < Api::V1::BaseController
  before_action :set_humeur, only: [:show]

  def index
    @humeurs = Humeur.all
  end

  def show
    @mission = @humeur.missions.map { |mission| mission }.sample
  end

  private

  def set_humeur
    @humeur = Humeur.find(params[:id])
  end
end
