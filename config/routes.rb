PivotalCommons::Application.routes.draw do
  root 'home#index'
  get 'apply', to: 'home#apply'
end
