class HumeursController < ApplicationController
  before_action :set_humeur, only: [:show, :edit, :update, :destroy]

  def index
    @humeurs = Humeur.all
  end

  def show
    @mission = @humeur.missions.map { |mission| mission }.sample
  end

  def new
    @humeur = Humeur.new
  end

  def create
    @humeur = Humeur.new(humeur_params)
    if @humeur.save
      redirect_to humeur_path(@humeur)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  #   @humeur.update(params[:humeur])
  # end

  # def update
  #   @humeur.update(humeur_params)
  # end

  # def destroy
  #   @humeur.destroy
  # end

  private

  def set_humeur
    @humeur = Humeur.find(params[:id])
  end

  def humeur_params
    params.require(:humeur).permit(:name)
  end

end
