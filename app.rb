require 'rubygems'
require 'sinatra/base'
require 'haml'
require_relative 'partials'

class App < Sinatra::Base
  include Sinatra::Partials

  set :haml, :format => :html5

  get "/" do
    haml :index
  end

  get "/foo" do
    haml :foo
  end
end

