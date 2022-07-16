class ProfessionsController < ApplicationController
  before_action :set_profession, only: %i[show edit update destroy]

  def new
    @profession = authorize Profession.new
  end

  def create
    @profession = authorize Profession.new(profession_params)
    if @profession.save
      redirect_to team_members_path(anchor: 'professions-section')
      flash.alert = 'Profesie creată'
    else
      redirect_to team_members_path(anchor: 'professions-section')
      flash.alert = 'Profesia nu a fost creată'
    end
  end

  def show
  end

  def index
  end

  def edit
  end

  def update
    if @profession.update(profession_params)
      redirect_to team_members_path(anchor: 'professions-section')
      flash.alert = 'Profesie creată'
    else
      redirect_to team_members_path(anchor: 'professions-section')
      flash.alert = 'Profesia nu a fost creată'
    end
  end

  def destroy
    if @profession.destroy
      redirect_to team_members_path(anchor: ''), notice: 'Profesie ștearsă'
    else
      redirect_to team_members_path(anchor: ''), notice: 'Încearcă mai târziu'
    end
  end

  private

  def profession_params
    params.require(:profession).permit(:name)
  end

  def set_profession
    @profession = authorize Profession.find(params[:id])
  end
end
