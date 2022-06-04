class CarouselCardsController < ApplicationController
  before_action :set_cc, only: [:show, :edit, :update, :destroy]
  def new
    @carousel_card = authorize CarouselCard.new()
  end

  def create
    @carousel_card = authorize CarouselCard.create(car_card_params)
    if @carousel_card.save!
      redirect_to admin_path
    end
  end

  def show
    redirect_to root_path
    flash.alert = 'Nu ai acces acolo...:'
  end

  def edit
  end

  def update
    if @carousel_card.update(car_card_params)
      redirect_to admin_path
    end
  end

  def index
    @carousel_cards = policy_scope(CarouselCard)
  end

  def destroy
    if @carousel_card.destroy
      redirect_to admin_path
    end
  end

  private

  def car_card_params
    params.require(:carousel_card).permit(:line_one, :line_two, :btn, :photo, :btn_text)
  end

  def set_cc
    @carousel_card = authorize CarouselCard.find(params[:id])
  end
end
