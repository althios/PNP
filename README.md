# PNP
Small Factoring can find a number divides composed differente to 1 and itself, able up to 2^60, however its faster than tables, due to a list is O(n) on complexity and this is O(log^2(n)).
Gives two numbers, output which is the divisor or factor, and i which is a counter of cycles per run. For small cases the counter fits on a log^2(n) model, time later i found on
java it can't factor big numbers, as i expected. maybe the fault is on gcd which is low as i suspect. The algorithm is deterministic.
