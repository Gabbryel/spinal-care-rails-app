class FeaturettesController < ApplicationController
  before_action :set_featurette, only: [:show, :edit, :update, :destroy]
  def new
    @featurette = authorize Featurette.new()
  end

  def create
    @featurette = authorize Featurette.create(featurette_params)
    if @featurette.save!
      redirect_to admin_path(anchor: "featurettes-cards-admin")
    else
      redirect_to admin_path(anchor: "featurettes-cards-admin")
      flash.alert = "Cardul featurette nu a fost creat!"
    end
  end

  def index
    @featurettes = policy.scope(Featurette)
  end

  def show
  end

  def edit
  end

  def update
    if @featurette.update(featurette_params)
      redirect_to admin_path(anchor: "featurettes-cards-admin")
    else
      redirect_to admin_path(anchor: "featurettes-cards-admin")
      flash.alert = "Cardul featurette nu a fost modificat!"
    end
  end

  def destroy
    if @featurette.destroy
      redirect_to admin_path(anchor: "featurettes-cards-admin")
      flash.alert = "Cardul featurette a fost șters!"
    else
      redirect_to admin_path(anchor: "featurettes-cards-admin")
      flash.alert = "Cardul featurette nu a fost șters!"
    end
  end

  private

  def set_featurette
    @featurette = authorize Featurette.find(params[:id])
  end

  def featurette_params
    params.require(:featurette).permit(:photo, :title_one, :title_two, :content)
  end
end
