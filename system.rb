namespace :panda do
  
  desc "Update through apt-get"
   task :apt_get_update do
     sudo "apt-get update"
   end
  
   desc "Install ZLIB - required for Libgd"
   task :install_zlib do
     ["wget http://www.zlib.net/zlib-1.2.3.tar.gz",
      "tar -xvzf zlib-1.2.3.tar.gz",
      "cd zlib-1.2.3 && ./configure --prefix=/usr/local/zlib && sudo make && sudo make install"].each {|cmd| run cmd}
   end
   
   # For some reason it was being a pain in the arse, so...
   desc "Install all required files"
   task :install_required_files do
     ["wget http://fr.archive.ubuntu.com/ubuntu/pool/multiverse/g/gpac/libgpac-dev_0.4.4-0.3ubuntu1_amd64.deb",
      "sudo dpkg -i libgpac-dev_0.4.4-0.3ubuntu1_amd64.deb",
      #"wget http://fr.archive.ubuntu.com/ubuntu/pool/multiverse/f/faac/libfaac-dev_1.26-0.1ubuntu1_amd64.deb",
      #"sudo dpkg -i libfaac-dev_1.26-0.1ubuntu1_amd64.deb"
      "wget http://fr.archive.ubuntu.com/ubuntu/pool/multiverse/f/faac/libfaac0_1.26-0.1ubuntu1_amd64.deb",
      "sudo dpkg -i libfaac0_1.26-0.1ubuntu1_amd64.deb",
      "sudo apt-get install flvtool2"
      ].each {|cmd| run cmd}
   end
   
end