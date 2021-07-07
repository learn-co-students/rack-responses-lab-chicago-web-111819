require 'rack'
# require 'pry'

class Application

    def call(env)
        return [ 200, {'Content-Type' => 'text/html'}, pretty_response]
    end

    def pretty_response
        (Time.now.strftime("%H").to_i >= 12) ? ["Good Afternoon!"] : ["Good Morning!"]
    end
end