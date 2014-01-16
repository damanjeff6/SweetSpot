SweetSpot::Application.routes.draw do
  resources :users, :only => [:create, :new, :show]
  resource :session, :only => [:create, :destroy, :new]
  namespace :api, :defaults => { :format => :json } do
    resources :restaurants
    resources :ratings
    resources :reviews
  end
  root :to => "root#root"
end
