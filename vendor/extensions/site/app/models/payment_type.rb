class PaymentType < ActiveRecord::Base
  has_many :order
end

