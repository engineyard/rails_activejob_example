on_utilities("sidekiq") do
  sudo "monit start all -g #{config.app}_sidekiq"
end
