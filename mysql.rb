namespace :panda do
  
  desc "Install MySql"
  task :install_mysql do
    run "sudo apt-get install libmysqlclient15-dev && sudo gem install mysql" do |ch, stream, out|
      puts out
      ch.send_data(input = $stdin.gets) if out =~ /\[Y\/n\]\?/
    end
  end
  
end