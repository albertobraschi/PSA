module Spree
  module Frete
    class Calculator
      def calculate_shipping(shipment)
        return Spree::Frete::Config[:flat_rate_amount]
      end
    end
  end
end

