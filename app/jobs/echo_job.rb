class EchoJob < ApplicationJob
  queue_as :default

  def perform(*args)
    `echo "ECHO JOB: #{self.object_id} | #{Time.now}" >> #{File.join(Rails.root, 'tmp', 'echo.output')}`
  end
end
