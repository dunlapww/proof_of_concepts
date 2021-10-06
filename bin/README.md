## what is this bin folder##
The bin folder was created when the '$bundle install -binstubs' command was run.  This installed binstubs for all
your gem and rake files.  This allows me to run commands without preceding the command with 'bundle exec'.  For example,
I used to have to write 'bundle exec rake db:create', now I can just run 'rake db:create'