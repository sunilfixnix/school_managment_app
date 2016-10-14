Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/schools' => "schools#index"
  get '/schools/:id' => "schools#show"
  get '/schools/:id/standards' => "schools#show"
  post '/schools' => "schools#create"
  get '/schools/schools/new' => "schools#new"
  get '/schools/:id/schools/edit' => "schools#edit"
  patch '/schools/:id' => "schools#update"


  get '/standards/' => "standards#index"
  get '/standards/:id' => "standards#show"
  get '/standards/:id/sections/subjects' => "standards#show"
  post 'standards' => "standards#create"
  get '/standards/standards/new' => "standards#new"
  get '/standards/:id/standards/edit' => "standards#edit"
  put '/standards/:id' => "standards#update"



  get '/sections/' => "sections#index"
  get '/sections/:id/' => "sections#show"
  get '/sections/:id/students/exams' => "sections#show"
  post 'sections' => "sections#create"
  get '/sections/sections/new' => "sections#new"

  get '/students/' => "students#index"
  get '/students/:id' => "students#show"
  get '/students/:id/subjects/results' => "students#show"
  post 'students' => "students#create"
  get '/students/students/new' => "students#new"
  get '/students/:id/students/edit' => "students#edit"
  put '/students/:id' => "students#update"


  get '/teachers/' => "teachers#index"
  get '/teachers/:id' => "teachers#show"
  post 'teachers' => "teachers#create"
  get '/teachers/teachers/new' => "teachers#new"

  get '/subjects/' => "subjects#index"
  get '/subjects/:id' => "subjects#show"
  post 'subjects' => "subjects#create"
  get '/subjects/subjects/new' => "subjects#new"


  get '/attendances/' => "attendances#index"
  get '/attendances/:id' => "attendances#show"
  post 'attendances' => "attendances#create"
  get '/attendances/attendances/new' => "attendances#new"

  get '/exams/' => "exams#index"
  get '/exams/:id' => "exams#show"
  post 'exams' => "exams#create"
  get '/exams/exams/new' => "exams#new"

  get '/results/' => "results#index"
  get '/results/:id' => "results#show"
  post 'results' => "results#create"
  get '/results/results/new' => "results#new"

end

