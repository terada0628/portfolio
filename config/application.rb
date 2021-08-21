require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Hareruya
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # タイムゾーンを日本時間に設定
    config.time_zone = 'Asia/Tokyo'
    config.active_record.default_timezone = :local

    # デフォルトのロケールを日本(ja)に変更
    config.i18n.default_locale = :ja

    # assetsより外のvendorから読み込む命令
    config.assets.paths << config.root.join("vendor/assets/javascripts")
    config.assets.paths << config.root.join("vendor/assets/stylesheets")
    
    
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.yml').to_s]


    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
