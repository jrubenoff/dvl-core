source 'https://rubygems.org'
ruby '2.3.7'

gemspec

source 'https://rails-assets.org' do
  gem 'rails-assets-autosize'
end

group :development, :test do
  gem 'rspec_junit_formatter'
end

# Heroku...
group :production do
  gem 'autoprefixer-rails'
  gem 'fortitude'
  gem 'rails'
  gem 'rails_12factor'
  gem 'simple_form'
  gem 'simple_form_legend'
  gem 'thin'
end
