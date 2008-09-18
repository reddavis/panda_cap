namespace :panda do
  
  # Make sure this IS installed
  desc "Install ImageMagick"
  task :install_imagemagick do
    sudo "apt-get install imagemagick && apt-get install libmagick9-dev && gem install rmagick" do |ch, stream, out|
      puts out
      ch.send_data(input = $stdin.gets) if out =~ /\[Y\/n\]\?/
    end
  end
  
  desc "Install libjpeg love"
  task :install_libjpeg do
    ["wget ftp://ftp.uu.net/graphics/jpeg/jpegsrc.v6b.tar.gz",
    "tar -xf jpegsrc.v6b.tar.gz",
    "mkdir -p /usr/local/man/man1",
    "cd jpeg-6b && ./configure && sudo make && sudo make install"].each {|cmd| run cmd}
  end
    
  desc "Install libgd"
  task :install_libgd do
    ["wget http://www.libgd.org/releases/gd-2.0.35.tar.gz",
    "sudo tar -xf gd-2.0.35.tar.gz",
    "cd gd-2.0.35 && sudo ./configure && sudo make && sudo make install"].each {|cmd| run cmd}
  end
  
end