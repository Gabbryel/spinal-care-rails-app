module ApplicationHelper
  def dashboard_routing_helper
    current_page?(admin_path) || current_page?(team_members_path) || current_page?(medical_appliances_path)
  end
  def logo_icon_card(photo)
    image_tag(photo, class: 'rounded-circle logo-img')
  end
end
