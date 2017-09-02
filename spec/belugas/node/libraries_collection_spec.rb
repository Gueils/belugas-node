require "spec_helper"

describe Belugas::Node::LibrariesCollection do
  before {
    @dependencies = []

    pg_requirement = double("requirement")
    allow(pg_requirement).to receive(:requirements).and_return(["=>1.5"])
    pg_bundler_dependency = double("bundler_dependency")
    allow(pg_bundler_dependency).to receive(:name).and_return("pg")
    allow(pg_bundler_dependency).to receive(:requirement).and_return(pg_requirement)
    pg = Belugas::Node::Dependency.new(pg_bundler_dependency)

    @dependencies << pg
  }

  subject { Belugas::Node::LibrariesCollection.new(@dependencies) }

  it "has dependecies with standard names" do
    expect(subject.dependencies.count).to eq(1)
    expect(subject.dependencies.last.standard_name).to eq("postgresql")
  end
end