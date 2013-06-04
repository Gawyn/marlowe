FactoryGirl.define do
  factory :cookie_session, :class => Marlowe::CookieSession do
    referer "http://google.com"
  end
end
