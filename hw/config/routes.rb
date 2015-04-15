Rails.application.routes.draw do
  #route for GreetController
  get "/greet" => "greet#say_word"

  #route for ContactController
  get "/contact" => "contact#index"
  get "/contact_submitted" => "contact#submitted"

  #route for rps game
  get "/rps" => "rps#index"
  get "/rps_submitted" => "rps#submitted"

  #route for Dice_gameController
  get "/dice" =>"dice#index"
  get "/dice/roll"=>"dice#roll"
end
