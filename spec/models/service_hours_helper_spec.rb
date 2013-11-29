require 'spec_helper'

describe "ServiceHoursHelpers" do
  include ServiceHoursHelper

  describe "testtest" do
    it "should equal Jason" do
      test.should eql("Jason")
    end
  end
end