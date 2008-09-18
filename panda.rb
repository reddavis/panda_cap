namespace :panda do
  
  desc "Copy over panda!"
  task :copy_panda do
    path = '~/../usr/local/www'
    ["sudo mkdir -p #{path}",
     "cd #{path} && sudo git clone git://github.com/reddavis/panda.git && mkdir -p panda/videos && mkdir -p panda/log",
     "cd #{path}/panda/config && cp panda_init.rb.example panda_init.rb && cp mailer.rb.example mailer.rb"].each {|cmd| run cmd}
  end
  
end