require 'bundler/setup'

namespace :style do
  require 'rubocop/rake_task'
  desc 'Run Ruby style checks'
  Rubocop::RakeTask.new(:ruby) do |t|
    t.options = ['--lint']
  end

  require 'foodcritic'
  desc 'Run Chef style checks'
  FoodCritic::Rake::LintTask.new(:chef)
end

desc 'Run all style checks'
task style: ['style:chef', 'style:ruby']
