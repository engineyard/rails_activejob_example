class TimeoutJob < ApplicationJob
  queue_as :default

  def perform(*args)
    `echo "TIMEOUT JOB START: #{self.object_id} | #{Time.now}" >> #{File.join(Rails.root, 'tmp', 'timeout.output')}`
    sleep 600
    `echo "TIMEOUT JOB END: #{self.object_id} | #{Time.now}" >> #{File.join(Rails.root, 'tmp', 'timeout.output')}`
  end
end
