require 'spec_helper'

module Marlowe
  describe CookieSession do
    subject { FactoryGirl.create :cookie_session }

    it { should be_valid }
  end
end
