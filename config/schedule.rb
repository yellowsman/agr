# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
#
#


every :saturday, at: '7:30 pm'do
	command  'ruby ~/agr/config/ag_recoder.rb'
end

every :saturday, at: '8:00 pm'do
  command 'kill $(ps -C ffmpeg| grep -v PID | cut -d" " -f1)' # process kill
end
