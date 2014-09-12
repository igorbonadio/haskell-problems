# List Problems

## H99-31

Determine whether a given integer number is prime.

_Level_: 1

_Example_:

```haskell
isPrime 7 -- True
```

## H99-32

Determine the greatest common divisor of two positive integer numbers.

_Level_: 1

_Example_:

```haskell
myGCD 36 63     -- 9
myGCD (-3) (-6) -- 3
myGCD (-3) 6    -- 3
```

## H99-33

Determine whether two positive integer numbers are coprime. Two numbers are coprime if their greatest common divisor equals 1.

_Level_: 1

_Example_:

```haskell
coprime 35 64 -- True
```

## H99-34

Calculate Euler's totient function phi(m).

Euler's so-called totient function phi(m) is defined as the number of positive integers r (1 <= r < m) that are coprime to m.

Example: m = 10: r = 1,3,7,9; thus phi(m) = 4. Note the special case: phi(1) = 1.

_Level_: 1

_Example_:

```haskell
totient 10 -- 4
```

## H99-35

Determine the prime factors of a given positive integer. Construct a flat list containing the prime factors in ascending order.

_Level_: 1

_Example_:

```haskell
primeFactors 315 -- [3, 5, 7]
```

## H99-36

Determine the prime factors of a given positive integer.

Construct a list containing the prime factors and their multiplicity.

_Level_: 1

_Example_:

```haskell
primeFactorsMult 315 -- [(3,2),(5,1),(7,1)]
```

## H99-37

Calculate Euler's totient function phi(m) (improved).

See problem 34 for the definition of Euler's totient function. If the list of the prime factors of a number m is known in the form of problem 36 then the function phi(m) can be efficiently calculated as follows: Let ((p1 m1) (p2 m2) (p3 m3) ...) be the list of prime factors (and their multiplicities) of a given number m. Then phi(m) can be calculated with the following formula:

```
phi(m) = (p1 - 1) * p1 ** (m1 - 1) *
         (p2 - 1) * p2 ** (m2 - 1) *
         (p3 - 1) * p3 ** (m3 - 1) * ...
```

Note that a ** b stands for the b'th power of a.

_Level_: 1

_Example_:

```haskell
totient 10 -- 4
```
