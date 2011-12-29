module ProjectEuler
  module Utils
    module Benchmarkable
      def realtime
        time = Benchmark.realtime do
          solution
        end
        puts "#{self.class.name} - Time elapsed: #{time}"
      end
    end
  end
end
