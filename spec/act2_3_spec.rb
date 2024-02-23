require 'act2_3'
require 'RSpec'

RSpec.describe StringWrapper do

  let(:string_ob) { StringWrapper.new("Jacob")}

  describe "#reverse" do
    it "reverses the string" do
      expect(string_ob.reverse).to eq(string_ob.str.reverse)
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      expect(string_ob.upcase).to eq(string_ob.str.upcase)
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      expect(string_ob.downcase).to eq(string_ob.str.downcase)
    end
  end
end
