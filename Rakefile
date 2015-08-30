require "bundler/gem_tasks"
require "pry"
require "rake/extensiontask"

task 'compile' do
  Dir.chdir('ext/hyperloop') do
      require "#{Dir.pwd}/extconf.rb"
  end
end
