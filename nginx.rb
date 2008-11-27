namespace :panda do
    
  desc "Install nginx"
  task :install_nginx do
    ["sudo aptitude install libpcre3 libpcre3-dev libpcrecpp0 libssl-dev zlib1g-dev",
      "rm -rf nginx-upload-progress-module",
       "git clone git://github.com/masterzen/nginx-upload-progress-module.git",
       "rm -f nginx-0.6.32.tar.gz",
       "wget http://sysoev.ru/nginx/nginx-0.6.32.tar.gz",
       "rm -rf nginx-0.6.32",
       "tar -zxvf nginx-0.6.32.tar.gz",
       "cd nginx-0.6.32 && ./configure --sbin-path=/usr/local/sbin --with-http_ssl_module --add-module=../nginx-upload-progress-module/ && make && sudo make install"
      ].each {|cmd| run cmd}
  end
  
  desc "Start nginx"
  task :start_nginx do
    sudo "/usr/local/sbin/nginx"
  end
  
  desc "Stop nginx"
  task :stop_nginx do
    sudo "kill `cat /usr/local/nginx/logs/nginx.pid`"
  end
  
end