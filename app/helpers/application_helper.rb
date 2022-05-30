module ApplicationHelper
  def dashboard_routing_helper
    current_page?(admin_path) || current_page?(team_members_path) || current_page?(medical_appliances_path)
  end
end
