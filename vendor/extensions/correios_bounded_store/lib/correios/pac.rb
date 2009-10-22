module Correios
  class Pac < Correios::Base
    def rate_code
      "41106"
    end

    def rate_reference
      "pac"
    end

    def rate_name
      "Correios PAC"
    end
  end
end

