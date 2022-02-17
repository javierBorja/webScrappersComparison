Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "application#linkThumbnailerExample"

  get '/linkthumbnailer', to: 'application#linkThumbnailerExample'
  get '/gastly', to: 'application#gastlyExample'
  get '/metainspector', to: 'application#metaInspectorExample'
end
