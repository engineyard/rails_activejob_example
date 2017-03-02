class EchoJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "DEBUG: #{Time.now} This is an output to STDOUT. It will cause Sidekiq to throw a Broken Pipe error."
    `echo "ECHO JOB: #{self.object_id} | #{Time.now}" >> #{File.join(Rails.root, 'tmp', 'echo.output')}`
  end
end
