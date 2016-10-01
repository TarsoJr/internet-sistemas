Rails.application.routes.draw do

    root 'pages#welcome'
  #scope "(:locale)", locale: /en|pt/ do
    resources :courses
    get 'courses_indexjs', to: 'courses#indexjs'
  #end
    resources :classrooms
    get 'classrooms_by_course', to: 'courses#by_course'

    resources :students
    get 'students_indexjs', to: 'students#indexjs'

  #get '/:locale' => 'home#index', locale: /en|pt/

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
