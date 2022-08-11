# Chapter 5: Reducing Costs with Duck Typing

## Quotes by the author which I found insightful:
```
The purpose of object-oriented design is to reduce the cost of change.
```
```
It's not what an object is that matters, it's what it does.
```
```
If every object trusts all others to be what it expects at any given moment, and any object can be any kind of thing, the design possibilities are infinite.
These possibilities can be used to create flexible designs that are marvels of structured creativity or, alternatively, to construct terrifying designs that are incomprehensibly chaotic.
```
```
Sequence diagrams should always be simpler than the code they represent; when they are not, something is wrong with the design.
```
```
Concrete code is easy to understand but costly to extend. 
Abstract code may initially seem more obscure but, once understood, is far easier to change.
The use of a duck type moves your code along the scale from more concrete to more abstract, making the code easier to extend but casting a veil over the underlying class of the duck.
```
```
The ability to tolerate ambiguity about the class of an object is the hallmark of a confident designer.
Once you begin to treat your objects as if they are defined by their behavior rather than by their class, you enter into a new realm of expressive flexible design.
```
```
It is relatively easy to implement a duck type; your design challenge is to notice that you need one and to abstract its interface.
```
```
Flexible applications are built on objects that operate on trust; it is your job to make your objects trustworthy.
```
```
Implementing duck types across your own classes is one thing, but changing Ruby base classes to introduce new duck types is quite another.
The tradeoffs are different; the risks are greater.
```
```
If your problem needs static typing, pick a language that enforces it; don't try to add static typing to Ruby.
Attempting to write statically typed code in a dynamically typed language yields code that suffers from the worst of both.
Duck typing is built on dynamic typing; to reap the full benefit from duck typing, you must embrace this dynamism.
```
