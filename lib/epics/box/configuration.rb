module Epics
  module Box
    class Configuration
      def database_url
        ENV['DATABASE_URL'] || 'postgres://localhost/ebicsbox_test'
      end

      def beanstalkd_url
        ENV['BEANSTALKD_URL'] || 'localhost:11300'
      end

      def hac_retrieval_interval
        120 # seconds
      end

      def secret_token
        if token = ENV['SECRET_TOKEN']
          token
        else
          raise 'Please set a secure token'
        end
      end
    end
  end
end
