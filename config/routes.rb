Rails.application.routes.draw do 
  root to: "pachinco#index"
  resources :pachinco do
  end
end
