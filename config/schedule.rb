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

set :output, {:error => 'log/cron_error.log', :standard => "log/cron_log.log"}
set :environment, 'development'

#contains resources and reminder to fill in confidence ratings
every :weekday, :at => '8am' do
  rake "email:all_users_daily"
end

#week summary with graph
every :saturday, :at => '10am' do
  rake "email:all_users_weekly"
end



#
# every :weekday, :at => '7am' do # Use any day of the week or :weekend, :weekday
#   rake "email:all_users"
# end
