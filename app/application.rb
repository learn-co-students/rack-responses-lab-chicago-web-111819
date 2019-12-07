class Application

    def call(env)
        resp = Rack::Response.new

        time_of_day = Time.now
        
        if time_of_day.hour < 12
            resp.write "Good Morning!"
        elsif time_of_day.hour >= 12
            resp.write "Good Afternoon!"
        end

        resp.finish
    end

end