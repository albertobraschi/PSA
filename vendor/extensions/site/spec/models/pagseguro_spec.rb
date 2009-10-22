require File.dirname(__FILE__) + '/../spec_helper'

describe Pagseguro do
  before(:each) do
    @pagseguro = Pagseguro.new
  end

  it "should be valid" do
    @pagseguro.should be_valid
  end
end
