require 'spec_helper'

describe TestController do
  describe "any request" do
    it "should set marlowe.referer" do
      request.env['HTTP_REFERER'] = 'test_referer'
      get :test
      session['marlowe.referer'].should == 'test_referer'
    end
  end
end
