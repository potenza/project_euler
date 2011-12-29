require 'benchmark'
require 'prime'
require_relative 'project_euler/utils/benchmarkable'
require_relative 'project_euler/utils/fibonacci'

# require problems
Dir.glob(File.dirname(__FILE__) + '/project_euler/problem*', &method(:require))
