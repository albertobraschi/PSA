class Admin::PaymentTypesController < Admin::BaseController

    resource_controller
    before_filter :load_data
    layout 'admin'

    update.response do |wants|
      wants.html { redirect_to collection_url }
    end


    create.response do |wants|
      wants.html { redirect_to collection_url }
    end

    private
    def load_data
      @payment_type = PaymentType.find :all, :order => :nome
    end

end

