require 'simplecov'
SimpleCov.start

$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "pry"
require "belugas/node/parser/package"
require "belugas/node/standard_names/base"
require "belugas/node/dependency.rb"
require "belugas/node/feature/handler"
require "belugas/node/feature/builder"
require "belugas/node/libraries_collection"
require "belugas/node/dispatcher"
require "belugas/node"
require "support/feature_helper"

RSpec.configure do |config|
  config.include FeatureExamples::ResponseHelpers
end

