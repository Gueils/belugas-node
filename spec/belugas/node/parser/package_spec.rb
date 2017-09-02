require "spec_helper"

describe Belugas::Node::Parser::Package do
  subject { Belugas::Node::Parser::Package.new("spec/support/package.json") }

  it "has a bunch of dependencies" do
    expect(subject.dependencies).not_to be_empty
  end

  context "an empty package" do
    it "has nothing" do
      empty_package_subject = Belugas::Node::Parser::Package.new("spec/support/empty_package.json")
      expect(empty_package_subject.dependencies).to be_empty
    end
  end

  it "has_a node version" do
    expect(subject.node_version).to eq("6.11.2")
  end

  it "has_no node version" do
   no_node_package_subject = Belugas::Node::Parser::Package.new("spec/support/no_node_version_package.json")
    expect(no_node_package_subject.node_version).to eq("6.11.2")
  end
end