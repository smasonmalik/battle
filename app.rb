require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Time to Battle'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
