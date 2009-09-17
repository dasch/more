require File.join(File.dirname(__FILE__), '..', 'lib', 'more')

if Rails.env == "production"
  config.after_initialize { Less::More.parse }
else
  ActionController::Base.before_filter { Less::More.parse }
end
