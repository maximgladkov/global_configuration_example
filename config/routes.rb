GlobalConfigurationExample::Application.routes.draw do
  
  match '/' => 'configurations#update', as: :configurations, via: [:post, :patch]

  root to: 'configurations#index'

end
