module ApplicationHelper
  attr_writer :title, :next_link, :back_link
  # General classes for form fields
  def label_class
    'peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-electric peer-focus:dark:text-electric-darker peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6'.freeze
  end

  def text_input_class
    'peer block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-electric focus:outline-none focus:ring-0 focus:border-electric'
  end
end
