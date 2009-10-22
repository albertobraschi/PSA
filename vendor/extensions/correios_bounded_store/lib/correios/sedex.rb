module Correios
  class Sedex < Correios::Base
    def rate_code
      "40010"
    end

    def rate_reference
      "sedex"
    end

    def rate_name
      "Correios Sedex"
    end
  end
end

