module Marlowe
  class CookieSession < ActiveRecord::Base
    attr_accessible :referer
  end
end
