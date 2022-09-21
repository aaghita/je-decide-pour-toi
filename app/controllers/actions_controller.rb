class ActionsController < ApplicationController

  # before_action :set_humeur, only: [:new, :create]

  # def show
  #   @action = Action.order("RAND()").first(1)
  # end

  def index
    @actions = Action.all
    @action = Action.order("RAND()").first(1)
  end

  # def new
  #   @action = Action.new
  # end

  # def create
  #   @action = Action.new(action_params)
  #   @action.humeur = @humeur
  #   @action.save
  # end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  private

  def set_humeur
    @humeur = Humeur.find(params[:action_id])
  end

  def action_params
    params.require(:action).permit(:content)
  end
end
