on_utilities("sidekiq") do
  info("Running on #{config.current_name}")
  # Run only on instances named sidekiq*
  #if /^sidekiq/.match config.current_name
    worker_count = 1 # please replace your own value
    (0...worker_count-1).each do |i|
      "sudo kill -TERM `cat /var/run/engineyard/sidekiq/rails_activejob_example/sidekiq_#{i}.pid`"
    end
  #end
end
