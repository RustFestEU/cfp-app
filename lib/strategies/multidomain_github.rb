require 'omniauth-github'

module OmniAuth
  module Strategies
    class GitHub
      def callback_url
        host = ENV['HOST']
        host = host + ':' + request.port.to_s unless [80,443].include? request.port
        host + script_name + callback_path + "/" + request.host
      end
    end
  end
end
