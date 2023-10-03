Rails.application.routes.draw do
  get '/ask', to: 'questions#ask'
  post '/show', to: 'questions#show'
  get '/show', to: 'shows#show'
end
