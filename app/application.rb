class Application

    def call(env)
      resp = Rack::Response.new

      time = Time.now
      time1 = time.hour

      if time1 < 12
        resp.write "Good Morning!"
      elsif time1 > 12
        resp.write "Good Afternoon!"
      end
  
      resp.finish
    end
  
end