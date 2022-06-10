class MiniCardsController < ApplicationController
  before_action :set_mini_card, only: %i[edit update show destroy]
  def new
    @mini_card = authorize MiniCard.new()
  end

  def create
    @mini_card = authorize MiniCard.new(mini_card_params)
    @mini_card.save!
    redirect_to admin_path(anchor: 'mini-cards-admin')
  end

  def edit
  end

  def update
    if @mini_card.update(mini_card_params)
      redirect_to admin_path(anchor: 'mini-cards-admin')
    end
  end

  def show
  end

  def index
    @mini_cards = policy.scope(MiniCard)
  end

  def destroy
    @mini_card = authorize MiniCard.find(params[:id])
    if @mini_card.destroy
      redirect_to admin_path(anchor: 'mini-cards-admin')
    end
  end

  private

  def mini_card_params
    params.require(:mini_card).permit(:photo, :text)
  end

  def set_mini_card
    @mini_card = authorize MiniCard.find(params[:id])
  end
end
