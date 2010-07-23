# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  DEFAULT_DATE_FORMAT = "%m/%d/%y"
  DEFAULT_TIME_FORMAT = "%I:%M %p"
  DEFAULT_DATE_TIME_FORMAT = "#{ DEFAULT_DATE_FORMAT } #{ DEFAULT_TIME_FORMAT }"
  SPLIT_DATE_TIME_FORMAT = "#{ DEFAULT_DATE_FORMAT }<br/>#{ DEFAULT_TIME_FORMAT }"

end
