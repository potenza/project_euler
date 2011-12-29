module ProjectEuler
  module Utils
    module Benchmarkable
      def time
        time = Benchmark.realtime do
          solution
        end
        puts "#{self.class.name} Elapsed Time: #{"%f" % time}"
      end

      def bm n = 1000
        Benchmark.bm(7) do |x|
          x.report(self.class.name + ':') do
            n.times { solution }
          end
        end
      end
    end
  end
end
