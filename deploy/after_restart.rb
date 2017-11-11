on_utilities() do
  if /^sidekiq/.match config.current_name
    worker_count = 1
    (0..worker_count-1).each do |i|
      sudo "kill -TERM `cat /var/run/engineyard/sidekiq/rails_activejob_example/sidekiq_#{i}.pid`"
    end
  end
end

warning "revision = #{config.revision[0..6]}"
warning "release_path = #{config.release_path}"
warning "env_name from node = #{config.node.dna[:environment][:name]}"
warning "env_name = #{config.environment_name}"
