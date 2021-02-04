server "138.197.190.169", user: "#{fetch(:user)}", roles: %w{app db web}, primary: true

set :application, "shop"
set :deploy_to, "/home/#{fetch(:user)}/apps/#{fetch(:application)}"

set :environment, "production"
set :rails_env,   "production"

set :nginx_server_name, "mbox.fun"
set :puma_conf, "#{shared_path}/config/puma.rb"