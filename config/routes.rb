Rails.application.routes.draw do
 root 'mainpage#index'

 get '/tutors', to: 'tutors#new'
 get '/students', to: 'students#new'
 
 resources :tutors 

 resources :students
end
