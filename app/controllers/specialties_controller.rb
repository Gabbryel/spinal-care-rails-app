class SpecialtiesController < ApplicationController
  before_action :set_specialty, only: %i[show edit update destroy]
  before_action :set_new_specialty, only: %i[new create]

  def new
  end

  def create
    if @specialty.save
      redirect_to team_members_path(anchor: 'specialties-section')
      flash.alert = 'Specialitate nouă creată!'
    else
      redirect_to team_members_path(anchor: 'specialties-section')
      flash.alert = 'Eroare! Reîncercați!'
    end
  end

  def edit
  end

  def update
    if @specialty.update(specialty_params)
      redirect_to team_members_path(anchor: 'specialties-section')
      flash.alert = 'Specialitate modificată!'
    else
      redirect_to team_members_path(anchor: 'specialties-section')
      flash.alert = 'Eroare! Reîncercați!'
    end
  end

  def index
    @specialties = policy_scope(Specialty)
  end

  def show
  end

  def destroy
    if @specialty.destroy
      redirect_to team_members_path(anchor: 'specialties-section')
      flash.alert = 'Specialitate ștearsă!'
    else
      redirect_to team_members_path(anchor: 'specialties-section')
      flash.alert = 'Eroare! Reîncercați!'
    end
  end

  private

  def specialty_params
    params.require(:specialty).permit(:name)
  end

  def set_specialty
    @specialty = authorize Specialty.find(params[:id])
  end

  def set_new_specialty
    @specialty = authorize Specialty.new(specialty_params)
  end
end
