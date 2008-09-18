namespace :panda do
  
  desc "Install nginx"
  task :install_nginx do
    sudo "aptitude install nginx"
  end
  
  desc "Start nginx"
  task :start_nginx do
    sudo "/etc/init.d/nginx start"
  end
  
  desc "Stop nginx"
  task :stop_nginx do
    sudo "/etc/init.d/nginx stop"
  end
  
  desc "Restart nginx"
  task :restart_nginx do
    sudo "/etc/init.d/nginx restart"
  end
  
end