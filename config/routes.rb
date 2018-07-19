Rails.application.routes.draw do
   
  get "courses" => "courses#index"

  get 'exercises/index'

  get 'exercises/html5_hello_world'

  get 'lessons/il-linguaggio'

  get 'lessons/struttura-documento'

  get 'lessons/protocollo-http'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  
  resources :courses, only: [:index, :show]
  
  namespace :admin do
    root to: "dashboard#index"
    resources :courses 
  end
  

  match 'corsi/html5'=> 'courses#html5', via: :get
  match 'corsi/ruby-on-rails'=> 'courses#ruby_on_rails', via: :get
  match 'corsi/ruby-on-rails/il-framework-ruby-on-rails' => 'lessons#il_framework_ruby_on_rails', via: :get
  match 'corsi/ruby-on-rails/introduzione' => 'lessons#introduzione', via: :get
  match 'corsi/ruby-on-rails/pattern-mvc' => 'lessons#pattern_mvc', via: :get
  match 'corsi/html5/il-linguaggio' => 'lessons#il_linguaggio', via: :get
  match 'corsi/html5/struttura-documento' => 'lessons#struttura_documento', via: :get
  match 'corsi/html5/esercizi/hello-world' => 'exercises#html5_hello_world', via: :get
 end
