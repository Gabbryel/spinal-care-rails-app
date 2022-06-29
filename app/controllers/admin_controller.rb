class AdminController < ApplicationController
  def general
    @users = User.all.order(admin: :desc)
    @mini_card = MiniCard.new
    @mini_cards = MiniCard.all.order(id: :asc)
    @carousel_card = CarouselCard.new
    @carousel_cards = CarouselCard.all
    @featurette = Featurette.new
    @featurettes = Featurette.all
    @reviews = Review.where(approved: false)
  end

  def team_members
    @member = Member.new()
    @members = Member.order(last_name: :asc)
    @profession = Profession.new()
    @professions = Profession.order(name: :asc)
    @specialty = Specialty.new()
    @specialties = Specialty.order(name: :asc)
  end

  def medical_appliances
  end
end
