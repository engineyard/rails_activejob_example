on_utilities() do
  if /^sidekiq/.match config.current_name
    sudo "kill -TERM `cat /var/run/engineyard/sidekiq/rails_activejob_example/sidekiq_0.pid`"
  end
end
