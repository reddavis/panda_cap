namespace :panda do
  
  desc "Install Ruby Gems"
  task :install_rubygems do
    ["wget http://rubyforge.org/frs/download.php/38646/rubygems-1.2.0.tgz",
      "tar -xf rubygems-1.2.0.tgz",
      "cd rubygems-1.2.0 && ruby setup.rb",
      "sudo ln -s /usr/bin/gem1.8 /usr/bin/gem",
      "gem sources -a http://gems.github.com",
      "PATH=${PATH}:/var/lib/gems/1.8/bin/",
      "export PATH"].each {|cmd| run cmd}
  end
  
  desc "Install all required gems"
  task :install_gems do
    gems = %w(merb merb_helpers merb_activerecord activesupport god aws-s3 rubigen RubyInline amazon_sdb SQS merb-assets merb-mailer merb_helpers uuid amazon_sdb activesupport rvideo activerecord rack tlsmail)
    gems.each do |gem|
      sudo "gem install #{gem}"
    end
  end
  
  desc "Update Gems"
  task :update_gems do
    sudo "gem update"
  end
  
end