require 'backports'
require_relative 'spec_helper'


describe NiceId::Id do

  before(:each) do
    @id = described_class.new
  end

  it "should generate proper Id" do
    @id.should be
    @id.should be_kind_of described_class
  end
  it "should have default size" do
    @id.to_s.length.should eq described_class::DEFAULT_SIZE*2
  end
  it "should check checksum" do
    @id.correct?.should be_true
    @id.key="2f2f2j"
    @id.correct?.should be_false
  end
  it "should change Id via key accessor" do
    expect {@id.key}.to change{@id.key = described_class.new.to_s}
  end
  it "should genarate Id with custom size" do
    described_class.new(7).to_s.length.should eq 7*2
  end

end
