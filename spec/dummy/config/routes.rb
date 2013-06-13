Rails.application.routes.draw do
  mount Marlowe::Engine => "/marlowe"
  match "test", :to => "test#test"
end
