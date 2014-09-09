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
