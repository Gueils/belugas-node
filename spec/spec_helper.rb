require 'simplecov'
SimpleCov.start

$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "pry"
require "belugas/node/parser/package"
require "belugas/node/standard_names/base"
require "belugas/node/dependency.rb"
require "belugas/node"
