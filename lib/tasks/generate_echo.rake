namespace :echo do
  desc "Generate Echo jobs"
  task :generate => :environment do
    job_count = ENV['ECHO_JOB_COUNT'].to_i || 100
    puts "Generating #{job_count} jobs..."
    job_count.times{ EchoJob.perform_later }
  end
end
