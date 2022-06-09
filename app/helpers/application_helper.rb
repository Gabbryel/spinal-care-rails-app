module ApplicationHelper
  def dashboard_routing_helper
    current_page?(admin_path) || current_page?(team_members_path) || current_page?(medical_appliances_path)
  end
  def logo_icon_card(photo)
    image_tag(photo, class: 'rounded-circle logo-img')
  end

  def super_admins
    User.where(super_admin: true).count <= 1
  end

  def total_star_rating
    if @reviews.empty?
      '--'
    else
      @reviews.pluck(:rating).sum.to_f / @reviews.count
    end
  end
end
