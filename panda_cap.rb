namespace :panda do
  
  desc "Install everything" # Haven't tested this as I did it all individually, but it should work
  task :install do
    apt_get_update
    install_ruby
    install_rubygems
    install_gems
    install_mysql
    install_git
    install_imagemagick
    install_all_required_files
    install_libjpeg
    install_zlib
    install_libgd
    install_rvideo
    install_ffmpeg
    install_nginx
    copy_panda
  end
end