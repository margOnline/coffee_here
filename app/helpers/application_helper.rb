module ApplicationHelper

  def venue_list_for(view)
    classes = ""
    classes += "active" if view == params[:view]
    content_tag :li, class: classes  do
      link_to(view.titleize, root_path)
    end
  end

end
