module ModelsHelper
  def job_title_icon
    if @model.profile.job_title == "Developer"
      "<i class='fa fa-code'></i>".html_safe
    elsif @model.profile.job_title == "Entrepreneur"
      "<i class='fa fa-lightbulb-o'></i>".html_safe
    elsif @model.profile.job_title == "Investor"
      "<i class='fa fa-dollar'></i>".html_safe
    end 
  end
end