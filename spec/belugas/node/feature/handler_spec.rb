require "spec_helper"

describe Belugas::Node::Feature::Handler do
  before {
    @data = [{
               "name" => "pg",
               "version" => "9.6",
               "category" => ["Database"]
             }]
  }

  subject { Belugas::Node::Feature::Handler.new(@data) }

  it "transcodes" do
    expect(subject.transcode).to have_key("pg")
  end

  it "encodes" do
    expect(subject.encode.first).to have_key("version")
  end
end