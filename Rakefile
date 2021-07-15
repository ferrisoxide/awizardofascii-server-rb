require "sinatra/activerecord"
require "sinatra/activerecord/rake"

require_relative 'models/world'

namespace :db do
  task :load_config do
    require "./app"
  end
end

namespace :worlds do

  task set_name: 'db:environment' do
    @name = ENV['NAME']

    exit 'Set NAME=[name of world]' if @name.blank?
  end

  desc 'Create a world'
  task create: :set_name do
    World.find_or_create_by(name: @name).save!
  end
end
