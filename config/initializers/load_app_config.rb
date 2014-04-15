APP_CONFIG = YAML.load(File.read(File.expand_path('../../app_config.yml', __FILE__)))
APP_CONFIG.merge! APP_CONFIG.fetch(Rails.env, {})
APP_CONFIG.symbolize_keys!