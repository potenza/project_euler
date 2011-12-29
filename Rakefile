require 'rake/testtask'

# provides 'rake test'
Rake::TestTask.new do |t|
  t.test_files = FileList['spec/*_spec.rb']
end

# alias for 'rake test'
desc 'Run all specs'
task :spec do
  Rake::Task['test'].invoke
end
