Rails.application.routes.draw do

  get 'lessons/il-linguaggio'

  get 'lessons/struttura-documento'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  match 'corsi/html5'=> 'courses#html5', via: :get
  match 'corsi/html5/il-linguaggio' => 'lessons#il_linguaggio', via: :get
  match 'corsi/html5/struttura-documento' => 'lessons#struttura_documento', via: :get
 
end
