class Application
    def call(env)
        resp = Rack::Response.new

        if Time.now.hour <= 12
            resp.write "Morning Time"
        else
            resp.write "Afternoon Naps"
        end

        resp.finish
    end
end