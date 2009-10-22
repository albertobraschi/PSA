class CorreiosBoundedStoreExtension < Spree::Extension
  version "0.1"
  description "Support for brazilian postal service online shiping price calculation, using a type of web service access contract called 'bounded store'."

  def activate
    # Adiciona o link para a extensão na pagina de configuração
    Admin::ConfigurationsController.class_eval do
      before_filter :add_correios_bounded_store_link, :only => :index

      def add_correios_bounded_store_link
         @extension_links << {
            :link => "#",
            :link_text => t('ext.correios_bounded_store.extension_name'),
            :description => t('ext.correios_bounded_store.extension_description')
          }
      end
    end
  end

end

