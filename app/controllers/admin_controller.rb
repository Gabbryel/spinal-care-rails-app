class AdminController < ApplicationController
  def general
    @users = User.all.order(admin: :desc)
    @mini_card = MiniCard.new
    @mini_cards = MiniCard.all.order(id: :asc)
    @carousel_card = CarouselCard.new
    @carousel_cards = CarouselCard.all
    @featurette = Featurette.new
    @featurettes = Featurette.all
  end

  def team_members
  end

  def medical_appliances
  end
end
