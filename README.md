Project Euler
=============

This project is a collection of my Project Euler solutions in Ruby.

Rake Tasks
----------

Run all the specs, which checks every solution:

    $ rake spec

Solve a particular problem:

    $ rake solve p=1

    Problem1 Solution: 233168

View the elapsed time for a particular solution:

    $ rake time p=1

    Problem1 Elapsed Time: 0.000253

Benchmark a particular solution (1,000 iterations):

    $ rake bm p=1
                   user     system      total        real
    Problem1:  0.250000   0.000000   0.250000 (  0.246530)
