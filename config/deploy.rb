# config valid only for current version of Capistrano
lock '3.5.0'

set :application, 'mises.in.ua'
set :repo_url, 'https://github.com/MisesInUa/mises.in.ua.git'

set :deploy_to, '/home/mises/app'

set :keep_releases, 2

after :deploy, :build
