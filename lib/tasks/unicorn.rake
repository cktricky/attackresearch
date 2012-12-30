namespace :unicorn do

  desc "Start unicorn"
  task :start, :port do |task, number|
    port_command = number[:port].nil? ? "-p 80" : "-p #{number[:port]}"
    sh("rvmsudo bundle exec unicorn #{port_command}")
  end
  
end

