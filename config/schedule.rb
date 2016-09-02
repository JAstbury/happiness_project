set :output, {:error => 'log/cron_error.log', :standard => "log/cron_log.log"}
set :environment, 'production'

#contains resources and reminder to fill in confidence ratings
every :weekday, :at '8am' do
  rake "email:all_users_daily"
end

#week summary with graph
every :saturday, :at '10am' do
  rake "email:all_users_weekly"
end

every :sunday, :at '5am' do
  rake "db:reset_links_model"
  rake "db:seed"
end
