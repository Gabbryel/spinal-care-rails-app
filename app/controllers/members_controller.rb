class MembersController < ApplicationController
  before_action :set_member, only: %i[edit update show destroy]
  skip_before_action :authenticate_user!, except: %i[new create edit update destroy]

  def new
    @member = authorize Member.new()
  end

  def create
    @member = authorize Member.new(member_params)
    if @member.save!
      redirect_to team_members_path(anchor: "member-card-#{@member.id}")
      flash.alert = "Ai creat un cont de #{@member.role} nou"
    else
      render :new
      flash.alert = "Ceva nu a mers. Reîncearcă, te rog!"
    end
  end

  def edit
  end

  def update
    if @member.update(member_params)
      redirect_to team_members_path(anchor: "member-card-#{@member.id}")
      flash.alert = "Ai modificat contul #{@member.first_name} #{@member.last_name}"
    else
      render :edit
      flash.alert = "Ceva nu a mers. Reîncearcă, te rog!"
    end
  end

  def index
    # binding.pry
      if !params[:search].nil? && params[:search][:roles].present? && params[:search][:specialty] && params[:search][:query].present?
        @filter = params[:search][:roles]
        @members = @filter.empty? ? policy_scope(Member) : policy_scope(Member).where(role: @filter)
        @members = @members.where(specialty: params[:search][:specialty])
        @members = @members.where("slug ILIKE ?", "%#{params[:search][:query]}%")
        members_empty
      elsif !params[:search].nil? && params[:search][:roles].present? && params[:search][:specialty].present?
        @filter = params[:search][:roles]
        @members = @filter.empty? ? policy_scope(Member) : policy_scope(Member).where(role: @filter)
        @members = @members.where(specialty: params[:search][:specialty])
      elsif !params[:search].nil? && params[:search][:specialty].present?
        @members = policy_scope(Member).where(specialty: params[:search][:specialty])
      elsif !params[:search].nil? && params[:search][:roles].present?
        @filter = params[:search][:roles]
        @members = @filter.empty? ? policy_scope(Member) : policy_scope(Member).where(role: @filter)
        members_empty
      elsif !params[:search].nil? && params[:search][:query].present?
        @members = policy_scope(Member).where("slug ILIKE ?", "%#{params[:search][:query]}%")
        members_empty
    else
      @members = policy_scope(Member).all
    end
  end

  def show
  end

  def destroy
    if @member.destroy
      redirect_to team_members_path
      flash.alert = "Ai șters contul cu succes!"
      else
        redirect_to team_members_path(anchor: "member-card-#{@member.id}")
        flash.alert = "Se pare că acest cont are extra-vieți! Mai încearcă încă o dată ștergerea!"
    end
  end

  private

  def member_params
    params.require(:member).permit(:last_name, :first_name, :role, :specialty, :photo, :slug)
  end

  def set_member
    @member = authorize Member.find_by(slug: params[:id])
  end

  def members_empty
    if @members.empty?
      flash.alert = "Căutarea nu returnat nici un rezultat!"
    end
  end

end
