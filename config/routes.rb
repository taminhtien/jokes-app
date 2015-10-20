Rails.application.routes.draw do
  resources :jokes, only: [:index] do
    member do
      patch :like, :dislike
    end
  end

  root 'jokes#index'
end
