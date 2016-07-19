desc "Build mises.in.ua"
task :build do
  on roles(:app) do
    within '~/app/current' do
      execute "mkdir -p #{shared_path}/tmp"
      execute "rm -rf tmp/*"
      execute "hugo -s ~/app/current -d #{shared_path}/tmp --theme=hugo-geo --buildDrafts"
      execute "cp -r #{shared_path}/tmp/* ~/html"
    end
  end
end
