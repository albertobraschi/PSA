module Admin::PaymentTypesHelper
  def status_icon(status, options={})
    image_tag "icons/#{status.to_s.underscore}.gif", {:title => status.to_s.titleize}.merge(options)
  end
end

