require "spec_helper"

describe Belugas::Node::Dispatcher do
  subject { Belugas::Node::Dispatcher.new("spec/support/package.json") }

  context "has valid categories" do
    it "renders proper database features" do
      expect(subject.render).to eq(valid_features)
    end
  end

  context "has empty categories" do
    it "for a known requirement" do
      empty_package = Belugas::Node::Dispatcher.new("spec/support/empty_package.json")
      expect(empty_package.render).to eq(default_node_feature)
    end
  end
end