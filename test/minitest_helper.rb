require 'simplecov'
SimpleCov.command_name 'minitest'

require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/reporters'

MiniTest::Reporters.use!  MiniTest::Reporters::SpecReporter.new
