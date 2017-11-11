on_utilities() do
  if /^sidekiq/.match config.current_name
    worker_count = 1
    (0..worker_count-1).each do |i|
      sudo "kill -TERM `cat /var/run/engineyard/sidekiq/rails_activejob_example/sidekiq_#{i}.pid`"
    end
  end
end

puts "revision = #{config.revision[0..6]}"
puts "release_path = #{config.release_path}"
puts "env_name from node = #{config.node[:environment][:name]}"
puts "env_name = #{config.environment_name}"
