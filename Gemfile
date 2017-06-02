source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0'
# Use sqlite3 as the database for Active Record

# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'bootstrap-sass' #美化 html
gem 'devise' #login/logout
gem 'simple_form' #美化form
gem 'font-awesome-rails' #fa-icons
gem 'carrierwave' #upload files
gem 'mini_magick' #resize pics
gem 'awesome_rails_console' #美化console
gem 'rails-erd'
gem 'letter_opener', group: :development
gem 'aasm'
gem 'figaro' #密碼管理
gem 'fog'
gem 'carrierwave-qiniu' #七牛上傳
gem 'qiniu-rs' #七牛雲
gem 'ransack' #搜索
gem 'will_paginate' #分頁
gem 'will_paginate-bootstrap'# 美化分頁
gem 'acts_as_list' #上下排列
gem 'omniauth' #授權
gem 'omniauth-google-oauth2' #授權Google
gem 'omniauth-facebook' #授權FB
gem 'omniauth-github' #授權Github

group :development, :test do
  gem 'pry' #用 binding.pry debug
  gem 'sqlite3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  #gem 'spring'
  #gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
  gem 'pg'
end
