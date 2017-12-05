require "sinatra/base"

class App < Sinatra::Base
  set :public_folder, Proc.new{ File.join(root, "public") }

  get "/" do
    erb :index
  end

  get "/index.html?" do
    erb :index
  end

  get "/main.css" do
    scss :main, style: :expanded
  end

  run! if app_file == $0
end
