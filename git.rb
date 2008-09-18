namespace :panda do
  
  desc "Install some lovely git-ness"
  task :install_git do
    sudo "apt-get install git-core git-svn -y"
  end
  
end