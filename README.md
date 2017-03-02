# rails\_activejob\_example

This is a minimalist Rails application created to test background workers on Engine Yard Cloud. Currently only DelayedJob, Resque is supported, but we'll update this to also support other ActiveJob backends like Sidekiq.

## Usage

### Generate jobs

To generate 100 jobs:

```
ECHO_JOB_COUNT=100 bundle exec rake echo:generate
```

### Switch the ActiveJob backend

DelayedJob, Resque and Sidekiq are already in the Gemfile. To switch the ActiveJob backend, modify `config/application.rb`. Uncomment one backend and comment out the lines for the other backends.

```
#config.active_job.queue_adapter = :sidekiq
#config.active_job.queue_adapter = :delayed_job
config.active_job.queue_adapter = :resque
```
