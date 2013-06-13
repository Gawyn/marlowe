require 'spec_helper'

describe TestController do
  describe "any request" do
    before do
      request.env['HTTP_REFERER'] = 'first_referer'
      get :test
    end

    it "should set marlowe.first_referer" do
      session['marlowe.first_referer'].should == 'first_referer'
    end

    it "should set marlowe.referer" do
      request.env['HTTP_REFERER'] = 'second_referer'
      get :test
      session['marlowe.referer'].should == 'second_referer'
    end
  end
end
