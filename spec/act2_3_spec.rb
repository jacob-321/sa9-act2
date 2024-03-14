require 'act2_3'

RSpec.describe StringWrapper do

  let(:string_ob) { StringWrapper.new("Jacob")}

  describe "#reverse" do
    it "reverses the string" do
      expect(string_ob.reverse).to eq("bocaJ")
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      expect(string_ob.upcase).to eq("JACOB")
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      expect(string_ob.downcase).to eq("jacob")
    end
  end
end
