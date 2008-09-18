load 'deploy' if respond_to?(:namespace) # cap2 differentiator
Dir['*.rb'].each { |plugin| load(plugin) }

# =============================================================

set :application, "Panda"
set :domain, "67.207.149.24"
role :app, domain
role :web, domain
role :db,  domain, :primary => true

set :user, "root"

# Set-up Settings
set :deploy_to, "/home/"

# Change this to :thin if you want to use Thin instead.
#set :app_server, :mongrel

# Nginx Set-up
set :nginx_sites_available, "/usr/local/nginx/sites-available"
set :nginx_sites_enabled, "/usr/local/nginx/sites-enabled"


# =============================================================
# Application Server Settings (Thin or Mongrel)
# =============================================================
#set :app_servers, 1
#set :app_server_port, 7007
#set :app_environment, 'production'
#set :app_server_address, '127.0.0.1'
#set :app_server_conf, "#{shared_path}/config/thin.yml"


