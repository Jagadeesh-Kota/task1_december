Rails.application.routes.draw do
  
  get 'employee/index'

  get 'employee/create'

  get 'employee/search'
  
  get 'employee/view'
  
  get 'employee/save'
  
  get 'employee/edit'
  
  get 'employee/update'
  
  get 'employee/thankyou'
  
  get 'employee/update_thank'
  
  root 'employee#index'
  
  post 'employee/index'
  
  post 'employee/create'
  
  post 'employee/search'
  
  post 'employee/edit'
  
  post 'employee/save'
  
  post 'employee/view'
  
  post 'employee/edit'
  
  post 'employee/update'
  
  post 'employee/thankyou'
  
  post 'employee/update_thank'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
