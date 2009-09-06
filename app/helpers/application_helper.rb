# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def is_active?(page_name)
    if params[:controller] == page_name
      return "active"
    else 
      return "inactive"
    end
  end
  
  def nice_date(date)
      h date.strftime("%m/%d/%y")
   end

end
