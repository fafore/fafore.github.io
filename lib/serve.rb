# frozen_string_literal: true

# Serve jekyll module
module Serve
  extend self

  JEKYLL_OPTIONS = '--config _config-dev.yml --host 0.0.0.0'

  def prod
    puts "## Running: bundle exec jekyll serve #{JEKYLL_OPTIONS}"
    config_prod = YAML.load_file('_config.yml')
    config_prod.merge!('baseurl' => nil)
    config_dev = File.new('_config-dev.yml', 'w')
    config_dev.write(config_prod.to_h.to_yaml)
    config_dev.close
    system "bundle exec jekyll serve #{JEKYLL_OPTIONS}"
  rescue Interrupt => e
    puts e
    puts "\n## Shutting down server"
  end
end
