class Api::V1::HumeursController < Api::V1::BaseController
  def index
    @humeurs = Humeur.all
  end
end
