# config valid only for current version of Capistrano
lock "3.7.0"

# be sure to change these values
user = 'nicolas'
domain = 'depot.nicolas.com'

# adjust if you are using RVM, remove if you are not
set :rvm_type, :system
set :rvm_ruby_string, 'ruby-2.3.1'

# name of your application
set :application, 'depot'

# file paths
set :repo_url, "#{user}@#{domain}:git/#{fetch(:application)}.git"
set :deploy_to, "/home/#{user}/deploy/#{fetch(:application)}"

# distribute your applications across servers (the instructions below put them
# all on the same server, defined above as 'domain', adjust as necessary)
role :app, domain
role :web, domain
role :db, domain
