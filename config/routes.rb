R20130211StockMovie::Application.routes.draw do

get '/home' => 'home#home'
get '/about' => 'home#about'
get '/faq' => 'home#faq'

get '/movie' => 'movie#movie'
get '/movie_result' => 'movie#movie_result'
get '/get_movie' => 'movie#get_movie'

get '/stock' => 'stock#stock'
get '/stock_result' => 'stock#stock_result'
get '/get_quote' => 'stock#get_quote'


root :to => 'home#home'

end



# Start at /homepage - this will call the function 'homepage' in the home controller. The function will automatically search for a homepage.html.erb file to render.

# Once on the homepage page, clicking on the a or b links will look for the routes get '/a' or get '/b'. Depending on which you click, either the a or b function in the home controller will be called. The function will automatically search for an a or b .html.erb file to render.

# for the form, we are calling the get '/go' route. This will search for the function 'goto' in the home controller. Depending on params['choice'] (the value of the input), you will be redirected to get '/1, 2, or 3'. Each of these will call upon their own functions 'home#one/two/three' in the home controller. The home controller tells the program to render out unique pages for each.