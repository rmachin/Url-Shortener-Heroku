Rails.application.routes.draw do

  get '/new' => 'sites#new'

  post '/site' => 'sites#create'

  get ':url_short' => 'sites#show'

  root 'sites#new'

end
