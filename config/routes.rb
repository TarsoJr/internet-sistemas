Rails.application.routes.draw do

    root 'pages#welcome'

    resources :courses do
      resources :students
    end
    
    get 'courses_indexjs', to: 'courses#indexjs'
    get 'classrooms_by_course', to: 'courses#by_course'
    get 'students_indexjs', to: 'students#indexjs'

    resources :classrooms
    

    resources :students



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
