module Fake
  class Engine < ::Rails::Engine
    isolate_namespace Fake

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end