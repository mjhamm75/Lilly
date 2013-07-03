require 'spec_helper'

describe Scout do
  it "has a valid factory" do
    FactoryGirl.create(:scout).should be_valid
  end

  it "will give the scouts age" do
    scout = FactoryGirl.create(:scout)
    scout.age.should eql 15
  end

  it "will give the full name of the scout" do
    scout = FactoryGirl.create(:scout)
    scout.full_name.should eql "Tristan McGraw"
  end
end
