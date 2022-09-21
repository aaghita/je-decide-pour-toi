class HumeursController < ApplicationController
  before_action :set_humeur, only: [:show, :edit, :update, :destroy]

  def index
    @humeurs = Humeur.all
  end

  def show
  end

  # def new
  #   @humeur = Humeur.new
  # end

  # def create
  #   @humeur = Humeur.new(humeur_params)
  #   @humeur.save
  # end

  # def edit
  #   @humeur.update(params[:humeur])
  # end

  # def update
  #   @humeur.update(humeur_params)
  # end

  # def destroy
  #   @humeur.destroy
  # end

  # private

  def set_humeur
    @humeur = Humeur.find(params[:id])
  end

  # def humeur_params
  #   params.require(:humeur).permit(:name)
  # end

end
