namespace :timeout do
  desc "Generate Timeout jobs"
  task :generate => :environment do
    job_count = ENV['TIMEOUT_JOB_COUNT'].to_i || 100
    puts "Generating #{job_count} jobs..."
    job_count.times{ TimeoutJob.perform_later }
  end
end
