module ApplicationHelper
  attr_writer :title, :next_link, :back_link

  @back_link ||= '#'
end
