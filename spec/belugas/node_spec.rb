require "spec_helper"

describe Belugas::Node do
  it "has a version number" do
    expect(Belugas::Node::VERSION).not_to be nil
  end
end
