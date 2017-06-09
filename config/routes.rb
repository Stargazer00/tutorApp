Rails.application.routes.draw do
  get 'cases/new'

  get 'cases/show'

  get 'cases/edit'

  get 'cases/update'

  get 'cases/destroy'

 root 'mainpage#index'

 get '/tutors', to: 'tutors#new'
 get '/students', to: 'students#new'

 
 resources :tutors 
 get '/tutor_login', to: 'tutor_sessions#new'
 post '/tutor_login', to: 'tutor_sessions#create'
 delete '/tutor_logout', to: 'tutor_sessions#destroy'

 resources :students do 
 	resources :cases
 end 
 
 get '/student_login', to: 'student_sessions#new'
 post '/student_login', to: 'student_sessions#create'
 delete '/student_logout', to: 'student_sessions#destroy'
 
end
