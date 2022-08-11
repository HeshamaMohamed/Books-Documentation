# Chapter 6: Acquiring Behavior through Inheritance

## Quotes by the author which I found insightful:

```
Inheritance is, at its core, a mechanism for automatic message delegation.
```
```
Creating a hierarchy through inheritance has costs; the best way to minimize these costs is to maximize your chance of getting the abstraction right before allowing subclasses to depend on it.
```
```
The best way to create an abstract superclass is by pushing code up from concrete subclasses.
```
```
Every decision you make includes two costs: one to implement it and another to change it when you discover that you were wrong.
Taking both costs into account when choosing among alternatives motivates you to make conservative choices that minimize the cost of change.
```
```
Creating code that fails with reasonable error messages takes minor effort in the present but provides value forever.
Each error message is a small thing, but small things accumulate to produce big effects, and it is this attention to detail that marks you as a serious programmer.
Always document template method requirements by implementing matching methods that raise useful errors.
```
```
Instead of allowing subclasses to know the superclass' algorithm and requiring that they send super, superclasses can instead send hook messages, ones that exist solely to provide subclasses a place to contribute information by implementing matching methods.
This strategy removes the knowledge of the algorithm from the subclass and returns control to the superclass.
```
```
Hook methods allow subclasses to contribute specializations without knowing the abstract algorithm.
They remove the need for subclasses to send super and therefore reduce the coupling between layers of the hierarchy and increase its tolerance for change.
```
