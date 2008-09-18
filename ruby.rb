namespace :panda do
  
  desc "Install Ruby"
  task :install_ruby do
    sudo "apt-get install ruby rdoc irb libyaml-ruby libzlib-ruby ri libopenssl-ruby ruby1.8-dev build-essential" do |ch, stream, out|
      puts out
      ch.send_data(input = $stdin.gets) if out =~ /\[Y\/n\]\?/
    end
  end
  
end