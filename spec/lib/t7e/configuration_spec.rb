require 'spec_helper'
require 't7e/configuration'

describe T7e::Configuration do
  before do
    stub_const("T7e::Configuration::CONFIG_FILE", 'spec/files/config_file.yml')
  end
  it "read config key" do
    action = T7e::Configuration.new()
    expect(action.api_key).to eq("9ee251d46740ceb29f049976136c576c")
  end

  it "read config url" do
    action = T7e::Configuration.new()
    expect(action.url).to eq("sample.com")
  end

  it "read config languages" do
    action = T7e::Configuration.new()
    expect(action.languages).to eq(["en", "pl"])
  end

end
