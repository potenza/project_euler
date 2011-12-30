module ProjectEuler
  module Utils
    class Fibonacci
      include Enumerable

      def initialize limit = 4_000_000
        @a = 0
        @b = 1
        @limit = limit
      end

      def each
        begin
          yield @a
          @a, @b = @b, @a + @b
        end until @a > @limit
      end
    end
  end
end
