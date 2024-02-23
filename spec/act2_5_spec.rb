require 'act2_5'

RSpec.describe TemperatureConverter do

  let(:temperature) { TemperatureConverter.new }

  describe ".celsius_to_fahrenheit" do
    it "correctly converts 0°C to 32°F" do
      temp = temperature.celsius_to_fahrenheit(0)
      expect(temp).to eq(32)
    end

    it "correctly converts 100°C to 212°F" do
      temp = temperature.celsius_to_fahrenheit(100)
      expect(temp).to eq(212)
    end
  end

  describe ".fahrenheit_to_celsius" do
    it "correctly converts 32°F to 0°C" do
      temp = temperature.fahrenheit_to_celsius(32)
      expect(temp).to eq(0)
    end

    it "correctly converts 212°F to 100°C" do
      temp = temperature.fahrenheit_to_celsius(212)
      expect(result).to eq(100)
    end
  end
end
