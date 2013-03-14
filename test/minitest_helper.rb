require 'simplecov'
SimpleCov.command_name 'minitest'

require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/reporters'

MiniTest::Reporters.use!  MiniTest::Reporters::SpecReporter.new

# DCI Stuff
$:<<'app/models'    # add models path to load path
$:<<'app/roles'     # add roles path to load path
$:<<'app/contexts'  # add contexts load path


# Dummy class Actor (accepts roles)
require 'schizo'

class Actor
  include Schizo::Data
end
