Rails.application.routes.draw do
  get '/survey/show' => 'survey#show'
  get '/survey/result' => 'survey#result'
  get '/anxiety_survey/result' => 'anxiety_survey#result'
  get '/anxiety_survey/show' => 'anxiety_survey#show'
  get '/test_home/index' => 'test_home#index'
  get '/test_home/survey/show' => 'survey#show'
  get '/test_home/anxiety_survey/show' => 'anxiety_survey#show'
  #this is the default root command so localhost:3000 will go to test_home's index action
  root 'test_home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
