on_utilities("sidekiq") do
  # Run only on instances named sidekiq*
  #if /^sidekiq/.match config.current_name
    worker_count = 1 # please replace your own value
    (0...worker_count).each do |i|
      "sudo kill -USR1 `cat /var/run/engineyard/sidekiq/rails_activejob_example/sidekiq_#{i}.pid`"
    end
  #end
end
