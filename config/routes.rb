Rails.application.routes.draw do
  
  devise_for :teachers, controllers: {
  sessions:      'teachers/sessions',
  passwords:     'teachers/passwords',
  registrations: 'teachers/registrations'
}

devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}


  resources :posts , :only => [:show, :index, :new, :create, 
                               :edit, :update, :destroy]
  root "home#top"
  get "/" =>'home#top'
  
  resources :users, :only => [:show, :index, :edit, :update]
  resources :teachers, :only => [:show, :index, :edit, :update] 

  
end
