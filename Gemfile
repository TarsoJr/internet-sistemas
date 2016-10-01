source 'https://rubygems.org'


#Gems padrão
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'

gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'rails-i18n', '~> 5.0.0'




#Gems para styling
gem 'twitter-bootstrap-rails'


#Gems exigidas pelo teste
gem "responders"
gem "slim-rails"
gem 'enumerate_it'

group :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
  gem 'factory_girl_rails'
  gem 'rails-controller-testing' #solicitado pelo rspec

end

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'sqlite3'
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

#o teste exige deploy no heroku, então é necessário a gem pg
group :production do
 gem 'pg'
 gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
