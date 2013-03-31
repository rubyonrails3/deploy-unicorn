
root = "/home/deploy/htc/current"
worker_processes 4
working_directory "/home/deploy/htc/current" # available in 0.94.0+
listen "/tmp/unicorn.htc.sock", :backlog => 64
listen 8080, :tcp_nopush => true
timeout 30
pid "/home/deploy/htc/current/tmp/pids/unicorn.pid"
stderr_path "/home/deploy/htc/current/log/unicorn.stderr.log"
stdout_path "/home/deploy/htc/current/log/unicorn.stdout.log"
