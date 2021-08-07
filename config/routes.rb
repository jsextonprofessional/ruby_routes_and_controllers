Rails.application.routes.draw do
  get 'products' => 'products#index'
  get '/' => 'hello#index'
  get 'hello' => 'hello#hello'
  get 'say/hello(/:name)' => 'hello#say'
  # get '/say/hello/joe/' => 'hello#joe'
  # get '/say/hello/michael/' => 'hello#michael'
  get '/times/' => 'hello#times'
  get "times/restart" => "hello#restart"
end
