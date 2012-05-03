set :application, "set your application name here"
set :domain,      "192.168.0.86"
set :deploy_to,   "/home/toto/projet"
set :app_path,    "app"

set :repository,  "git@github.com:gmorlet/prj.git"
set :scm,         :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `subversion`, `mercurial`, `perforce`, `subversion` or `none`

set :model_manager, "doctrine"
# Or: `propel`

role :web,        domain                         # Your HTTP server, Apache/etc
role :app,        domain                         # This may be the same as your `Web` server
role :db,         domain, :primary => true       # This is where Rails migrations will run

set  :keep_releases,  3
default_run_options[:pty] = true
set :use_sudo, false
ssh_options[:forward_agent] = true 
set :update_vendors, true

set :user, "toto"
set :password, "toto"
