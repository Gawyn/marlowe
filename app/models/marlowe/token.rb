module Marlowe
  class Token < ActiveRecord::Base
    CODE_REGEXP = /\A[a-zA-Z0-9]{32}\Z/

    attr_accessible :value

    before_validation :set_value

    validates_format_of :value, :with => CODE_REGEXP
    validates_uniqueness_of :value

    private

    def set_value
      self.value = Token.generate_value 
    end

    def self.generate_value
      invalid_value = true

      while invalid_value
        value = [("a".."z"),("A".."Z"),(0..9)].map(&:to_a).flatten.sample(32).join
        invalid_value = Token.find_by_value(value)
      end

      value
    end
  end
end
