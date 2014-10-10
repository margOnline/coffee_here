module FlashHelper
  def flash_messages
    the_flash = [:notice, :alert, :error].map do |type|
      message = (flash[type] || '').squish
      content_tag(:div, message, :class => type) if message.present?
    end.join
    the_flash.html_safe
  end
end
