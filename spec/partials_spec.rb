require_relative 'spec_helper'

describe "sinatra partials" do
  def app; App.new end

  before do
    get '/'
  end

  describe "layout" do
    it "should render a partial with locals" do
      last_response.body.must_match /layout/
    end
  end

  describe "index" do
    it "should render a partial with locals" do
      last_response.body.must_match /index/
    end
  end
end

