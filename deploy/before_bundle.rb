on_utilities() do
  sudo "kill -USR1 `cat /var/run/engineyard/sidekiq/rails_activejob_example/sidekiq_0.pid`"
end
