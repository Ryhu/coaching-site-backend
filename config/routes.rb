Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  get "/students", to: "students#index"
  get "/student/:id", to: "students#show"
  get "/student/:id/lessons", to: "students#lessons"
  get "/student/:id/enrollable_lessons", to: "students#enrollable_lessons"


  get "/coaches", to: "coaches#index"
  get "/coach/:id", to: "coaches#show"
  get "/coach/:id/lessons", to: "coaches#lessons"

  post "/lessons", to: "lessons#create"
  patch "/lesson/:id", to: "lessons#update"
end
