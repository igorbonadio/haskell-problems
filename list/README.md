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
