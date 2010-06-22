# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def profile_link(id, name=id.capitalize)
    link_to(name, :controller => 'profiles', :action => id)
  end
end
