class FreteConfiguration < Configuration

  preference :flat_rate_amount, :decimal, :default => 0.00

  validates_presence_of :name
  validates_uniqueness_of :name
end

