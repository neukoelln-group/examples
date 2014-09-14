require 'sinatra'
require 'haml'

class SinatraApp < Sinatra::Base
  get '/' do
    haml :index
  end
end
