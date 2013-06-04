require 'spec_helper'

describe Marlowe::Token do
  subject { FactoryGirl.create :token }

  it { should be_valid }

  describe :attributes do
    it { should respond_to :value }
  end

  describe :hooks do
    describe :set_value do
      before do
        @token = FactoryGirl.build :token
        @token.value = nil
        @token.valid?
      end

      it "should set a value to the token" do
        @token.value.should_not be_nil
      end

      it "should set a value exactly 32 characters long" do
        @token.value.length.should == 32
      end

      it "should only set letters or numbers in the value" do
        (@token.value =~ /\A[a-zA-Z0-9]*\Z/).should be_true
      end
    end
  end
end
