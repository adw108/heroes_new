Refinery::Application.routes.draw do
  resources :latests

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :latests do
      collection do
        post :update_positions
      end
    end
  end
end
