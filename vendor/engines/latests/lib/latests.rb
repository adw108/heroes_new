require 'refinery'

module Refinery
  module Latests
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "latests"
          plugin.activity = {:class => Latest,}
        end
      end
    end
  end
end
