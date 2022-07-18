class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ home about ]

  def home
    @minicards = MiniCard.all
    @carousel_cards = CarouselCard.all
    @featurettes = Featurette.all
    @review = Review.new()
    @reviews = Review.all
  end

  def about
  end
end
