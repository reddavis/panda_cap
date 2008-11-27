namespace :panda do
  
  # TODO break out into smaller sections
  desc "Install FFMPEG"
  task :install_ffmpeg do
    ["rm lame-398.tar.gz",
     "rm -rf lame-398",
     "wget http://downloads.sourceforge.net/lame/lame-398.tar.gz?modtime=1215212728&big_mirror=0",
     "sudo tar -xf lame-398.tar.gz",
     "cd lame-398 && ./configure && make && sudo make install",
     "sudo aptitude install build-essential git-core zlib1g-dev checkinstall libgpac-dev libfaad-dev libfaac-dev liblame-dev libtheora-dev libvorbis-dev gpac subversion -y",
     
     # Make video encoding faster
     "rm yasm-0.7.1.tar.gz",
     "rm -rf yasm-0.7.1",
     "wget http://www.tortall.net/projects/yasm/releases/yasm-0.7.1.tar.gz",
     "tar xzvf yasm-0.7.1.tar.gz",
     "cd yasm-0.7.1 && ./configure && make && sudo make install",
     
     "sudo rm -rf x264",
     "git clone git://git.videolan.org/x264.git",
     "cd x264 && ./configure --enable-pthread --enable-mp4-output --enable-shared && sudo make && sudo make install",
     "sudo ldconfig",
     "sudo rm -rf ffmpeg",
     "sudo svn checkout svn://svn.mplayerhq.hu/ffmpeg/trunk ffmpeg",
     "cd ffmpeg && ./configure --enable-gpl --enable-postproc --enable-libvorbis --enable-libtheora --disable-debug --enable-libmp3lame --enable-libfaad --enable-libfaac --enable-pthreads --enable-libx264 && make && sudo make install"
   ].each {|cmd| run cmd}
  end
  
end