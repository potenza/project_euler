module ProjectEuler
  module Utils
    module Benchmarkable
      def time
        time = Benchmark.realtime do
          solution
        end
        puts "#{self.class.name} Elapsed Time: #{"%f" % time}"
      end

      def bm n = 100
        Benchmark.bm(9) do |x|
          x.report("Problem #{self.class.name.tr('Problem','')}:") do
            n.times { solution }
          end
        end
      end
    end
  end
end
