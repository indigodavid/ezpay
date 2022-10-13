module ApplicationHelper
  attr_writer :title, :next_link, :back_link

  @back_link ||= '#'
  
  def label_class
    'peer-focus:font-medium peer-focus:left-0 peer-focus:text-electric peer-focus:dark:text-electric peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6'.freeze
  end
end
