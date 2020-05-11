


  class Application
    def call(env)
    #   return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
    resp = Rack::Response.new
      
    #   (Time.now.to_i % 2).zero? ?  ["<em>Hello</em>"] : ["<strong>Hello you!</strong>"]
    time = Time.now.hour

    if time <= 12
        resp.write "Good Morning"
    else
        resp.write "Good Afternoon!"
    end
    resp.finish
    end
  end

