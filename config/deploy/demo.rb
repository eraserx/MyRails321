set :application, "rails321"
set :repository,  "git@github.com:eraserx/MyRails321"
set :deploy_to, "/var/www/#{application}"
set :rails_env, "demo"
set :user, "vagrant"
set :group, "vagrant"
set :use_sudo, false

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :scm_command, "/usr/bin/git"
set :branch, "master"
set :deploy_via, :remote_cache

role :web, "rails321"                   # Your HTTP server, Apache/etc
role :app, "rails321"                   # This may be the same as your `Web` server
role :db,  "rails321", :primary => true # This is where Rails migrations will run
