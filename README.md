# rails\_activejob\_example

This is a minimalist Rails application created to test background workers on Engine Yard Cloud. Currently only DelayedJob is supported, but we'll update this to also support other ActiveJob backends like Sidekiq and Resque.

## Usage

To generate 100 jobs:

```
ECHO_JOB_COUNT=100 bundle exec rake echo:generate
```