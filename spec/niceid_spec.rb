require 'spec_helper'

describe NiceId::Id do

  before(:each) do
    @id = described_class.new
  end

  it "should generate proper Id" do
    @id.should be
  end
  it "should have default size" do
    @id.to_s.length.should eq described_class::DEFAULT_SIZE*2
  end
  it "should check checksum" do
    @id.send(:correct?).should be_true
    @id.instance_eval{ @key = "4f2f2j"}
    @id.send(:correct?).should be_false
  end

  it "should genarate Id with custom size" do
    described_class.new(7).to_s.length.should eq 7*2
  end

end
