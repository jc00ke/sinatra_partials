require_relative "../app"

require 'rack/test'
require 'minitest/spec'
MiniTest::Unit.autorun

include Rack::Test::Methods
class App
  set :environment, :test
  set :run, false
  set :logging, false
  set :raise_errors, true
end
