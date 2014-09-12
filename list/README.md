# List Problems

## H99-1

Find the last element of a list.

_Level_: 1

_Example_:

```haskell
myLast [1,2,3,4]     -- 4

myLast ['x','y','z'] -- 'z'
```

## H99-2

Find the last but one element of a list.

_Level_: 1

_Example_:

```haskell
myButLast [1,2,3,4]     -- 3

myButLast ['x','y','z'] -- 'y'
```

## H99-3

Find the K'th element of a list. The first element in the list is number 1.

_Level_: 1

_Example_:

```haskell
elementAt [1,2,3] 2   -- 2

elementAt "haskell" 5 -- 'e'
```

## H99-4

Find the number of elements of a list.

_Level_: 1

_Example_:

```haskell
myLength [123, 456, 789] -- 3

myLength "Hello, world!" -- 13
```

## H99-5

Reverse a list.

_Level_: 1

_Example_:

```haskell
myReverse "A man, a plan, a canal, panama!" -- "!amanap ,lanac a ,nalp a ,nam A"

myReverse [1,2,3,4]                         -- [4,3,2,1]
```

## H99-6

Find out whether a list is a palindrome. A palindrome can be read forward or backward.

_Level_: 1

_Example_:

```haskell
isPalindrome [1,2,3]              -- False

isPalindrome "madamimadam"        -- True

isPalindrome [1,2,4,8,16,8,4,2,1] -- True
```

## H99-7

Flatten a nested list structure.

Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).

_Level_: 2

_Example_:

```haskell
data NestedList a = Elem a | List [NestedList a]

flatten (Elem 5)                                                      -- [5]

flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) -- [1,2,3,4,5]

flatten (List [])                                                     -- []
```

## H99-8

Eliminate consecutive duplicates of list elements.

If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

_Level_: 2

_Example_:

```haskell
compress "aaaabccaadeeee" -- "abcade"
```

## H99-9

Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.

_Level_: 2

_Example_:

```haskell
pack ['a', 'a', 'a', 'a', 'b', 'c', 'c',
      'a', 'a', 'd', 'e', 'e', 'e', 'e'] -- ["aaaa","b","cc","aa","d","eeee"]
```

## H99-10

Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E

_Level_: 1

_Example_:

```haskell
encode "aaaabccaadeeee" -- [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
```

## H99-11

Modified run-length encoding.

Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.

_Level_: 1

_Example_:

```haskell
encodeModified "aaaabccaadeeee" -- [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']
```

## H99-12

Decode a run-length encoded list.

Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.

_Level_: 2

_Example_:

```haskell
decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c',
                Multiple 2 'a',Single 'd',Multiple 4 'e'] -- "aaaabccaadeeee"
```

## H99-13

Run-length encoding of a list (direct solution).

Implement the so-called run-length encoding data compression method directly. I.e. don't explicitly create the sublists containing the duplicates, as in problem 9, but only count them. As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.

_Level_: 2

_Example_:

```haskell
encodeDirect "aaaabccaadeeee" -- [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']
```

## H99-14

Duplicate the elements of a list.

_Level_: 1

_Example_:

```haskell
dupli [1, 2, 3] -- [1,1,2,2,3,3]
```

## H99-15

Replicate the elements of a list a given number of times.

_Level_: 2

_Example_:

```haskell
repli "abc" 3 -- "aaabbbccc"
```

## H99-16

Drop every N'th element from a list.

_Level_: 2

_Example_:

```haskell
dropEvery "abcdefghik" 3 -- "abdeghk"
```

## H99-17

Split a list into two parts; the length of the first part is given.

Do not use any predefined predicates.

_Level_: 1

_Example_:

```haskell
split "abcdefghik" 3 -- ("abc", "defghik")
```

## H99-18

Extract a slice from a list.

Given two indices, i and k, the slice is the list containing the elements between the i'th and k'th element of the original list (both limits included). Start counting the elements with 1.

_Level_: 2

_Example_:

```haskell
slice ['a','b','c','d','e','f','g','h','i','k'] 3 7 -- "cdefg"
```

## H99-19

Rotate a list N places to the left.

_Level_: 2

_Example_:

```haskell
rotate ['a','b','c','d','e','f','g','h'] 3    -- "defghabc"

rotate ['a','b','c','d','e','f','g','h'] (-2) -- "ghabcdef"
```

## H99-20

Remove the K'th element from a list.

_Level_: 2

_Example_:

```haskell
removeAt 2 "abcd" -- ('b',"acd")
```

## H99-21

Insert an element at a given position into a list.

_Level_: 1

_Example_:

```haskell
insertAt 'X' "abcd" 2 -- "aXbcd"
```

## H99-22

Create a list containing all integers within a given range.

_Level_: 1

_Example_:

```haskell
range 4 9 -- [4,5,6,7,8,9]
```

## H99-26

Generate the combinations of K distinct objects chosen from the N elements of a list

In how many ways can a committee of 3 be chosen from a group of 12 people? We all know that there are C(12,3) = 220 possibilities (C(N,K) denotes the well-known binomial coefficients). For pure mathematicians, this result may be great. But we want to really generate all the possibilities in a list.

_Level_: 2

_Example_:

```haskell
combinations 3 "abcdef" -- ["abc","abd","abe",...]
```

## H99-27

Group the elements of a set into disjoint subsets.

a) In how many ways can a group of 9 people work in 3 disjoint subgroups of 2, 3 and 4 persons? Write a function that generates all the possibilities and returns them in a list.

_Level_: 3

```haskell
group3 ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"] -- [[["aldo","beat"],["carla","david","evi"],["flip","gary","hugo","ida"]],...]
                                                                        -- (altogether 1260 solutions)
group3 ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"] -- [[["aldo","beat"],["carla","david"],["evi","flip","gary","hugo","ida"]],...]
                                                                        -- (altogether 756 solutions)
```

b) Generalize the above predicate in a way that we can specify a list of group sizes and the predicate will return a list of groups.

_Level_: 3

_Example_:

```haskell
group [2,3,4] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"] -- [[["aldo","beat"],["carla","david","evi"],["flip","gary","hugo","ida"]],...]
                                                                               -- (altogether 1260 solutions)
group [2,2,5] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"] -- [[["aldo","beat"],["carla","david"],["evi","flip","gary","hugo","ida"]],...]
                                                                               -- (altogether 756 solutions)
```

You may find more about this combinatorial problem in a good book on discrete mathematics under the term "multinomial coefficients".

## H99-28

Sorting a list of lists according to length of sublists

a) We suppose that a list contains elements that are lists themselves. The objective is to sort the elements of this list according to their length. E.g. short lists first, longer lists later, or vice versa.

_Level_: 2

_Example_:

```haskell
lsort ["abc","de","fgh","de","ijkl","mn","o"] -- ["o","de","de","mn","abc","fgh","ijkl"]
```

b) Again, we suppose that a list contains elements that are lists themselves. But this time the objective is to sort the elements of this list according to their length frequency; i.e., in the default, where sorting is done ascendingly, lists with rare lengths are placed first, others with a more frequent length come later.

_Level_: 2

_Example_:

```haskell
lfsort ["abc", "de", "fgh", "de", "ijkl", "mn", "o"] -- ["ijkl","o","abc","fgh","de","de","mn"]
```
