module DashboardHelper

  def short_form(page)
    truncate page.body, :length => 60,
      :omission => "&hellip; (more)"
  end
  
end
