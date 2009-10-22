# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class SiteExtension < Spree::Extension

  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/site"

  def activate

    # Adiciona o link para a extensão na pagina de formas de pgto
    Admin::ConfigurationsController.class_eval do
      before_filter :add_payment_types_link, :only => :index

      def add_payment_types_link
         @extension_links << {
            :link => admin_payment_types_path,
            :link_text => t('payment_types.name'),
            :description => t('payment_types.description')
          }
      end
    end

    Order.class_eval do
      belongs_to :payment_type
    end

  end

end

