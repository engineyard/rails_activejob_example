sudo "monit unmonitor all -g #{config.app}_sidekiq"
on_utilities("sidekiq") do
  worker_count = 1 # change as needed
  (0...worker_count).each do |i|
    sudo "/engineyard/bin/sidekiq #{config.app} stop #{config.framework_env} #{i}"
  end
end
