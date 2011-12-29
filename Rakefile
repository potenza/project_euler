require 'rake/testtask'
require_relative 'lib/project_euler'

# provides 'rake test'
Rake::TestTask.new do |t|
  t.test_files = FileList['spec/*_spec.rb']
end

desc 'Run all specs'
task spec: [:test] do
  # alias for 'rake test'
end

def usage
  problem = ENV['p'].to_i
  raise "Please specify a problem to benchmark.\nUsage: rake bm p=1" if problem == 0
  problem
end

task :solve do
  problem = usage
  if klass = ProjectEuler.find(problem)
    answer = nil
    time = Benchmark.realtime do
      answer = klass.new.solution
    end
    puts "Problem #{problem} Solution: #{answer} (#{"%f" % time} seconds)"
  else
    puts "Problem #{problem} has not been solved"
  end
end

task :bm do
  problem = usage
  if klass = ProjectEuler.find(problem)
    klass.new.bm
  else
    puts "Problem #{problem} has not been solved"
  end
end

task default: [:spec]
