# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'capi'
set :repo_url, 'https://github.com/riseshia/capistrano_example.git'
set :release_path, '/home/vagrant/www'

framework_tasks = [:starting, :started, :updating, :updated, :publishing, :published, :finishing, :finished]
 
framework_tasks.each do |t|
  Rake::Task["deploy:#{t}"].clear
end
 
Rake::Task[:deploy].clear

task :clone do
  release_path = fetch(:release_path)
  repo_url = fetch(:repo_url)

  on roles(:web) do
    info "clone repository from github"
    unless test "[ -d #{release_path} ]"
      execute "mkdir -p #{release_path}"
    end

    execute "git clone #{repo_url} #{release_path}"
  end
end

task :deploy => :clone do
  release_path = fetch(:release_path)

  on roles(:web) do
    begin
      if test "[ -d #{release_path} ]"
        running_pid = capture("cd #{release_path}; cat RUNNING_PID")
        execute "kill #{running_pid}"
      end
    rescue => e
      info "No previous release directory exists"
    end

    execute "cd #{release_path}; ( ( nohup ruby server.rb ENV=production &>/dev/null ) & echo $! > RUNNING_PID)"
  end
end