require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
      erb :user_input
    end
  
    post '/piglatinize' do
      pl = PigLatinizer.new
      @piglatin = pl.piglatinize(params[:user_phrase])
      erb :results
    end
  
  end
# Build a form to take user input in user_input.erb. Show that form using a GET request at /.

# Create a POST method in your controller (app.rb) to receive your form's params.

# Build a PigLatinizer model (in your models directory) that converts a string into pig latin.

# In your application controller, create an instance of the PigLatinizer class to convert your user input to Pig Latin.

# Use ERB within a new view to display the final pig latin string to the user.