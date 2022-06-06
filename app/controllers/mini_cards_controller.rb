class MiniCardsController < ApplicationController
  def new
    @mini_card = authorize MiniCard.new()
  end

  def create
    @mini_card = authorize MiniCard.create(mini_card_params)
    @mini_card.save!
    redirect_to admin_path
  end

  def edit
    @mini_card = authorize MiniCard.find(params[:id])
  end

  def update
    @mini_card = authorize MiniCard.find(params[:id])
    if @mini_card.update(mini_card_params)
      redirect_to admin_path
    end
  end

  def show
    @mini_card = authorize MiniCard.find(params[:id])
  end

  def index
    @mini_cards = policy.scope(MiniCard)
  end

  def destroy
    @mini_card = authorize MiniCard.find(params[:id])
  end

  private

  def mini_card_params
    params.require(:mini_card).permit(:photo, :text)
  end
end
