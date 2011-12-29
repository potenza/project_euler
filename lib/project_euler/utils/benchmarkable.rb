module ProjectEuler
  module Utils
    module Benchmarkable
      def realtime
        time = Benchmark.realtime do
          solution
        end
        puts "#{self.class.name} - Time elapsed: #{time}"
      end

      def bm n = 1000
        Benchmark.bm do |x|
          x.report(self.class.name) do
            n.times { solution }
          end
        end
      end
    end
  end
end
