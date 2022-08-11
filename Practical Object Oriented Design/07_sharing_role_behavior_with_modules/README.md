# Chapter 7: Sharing Role Behavior with Modules

## Quotes by the author which I found insightful:
```
To reap benefits from using inheritance you must understand not only how to write inheritable code but also when it makes sense to do so.
The use of classical inheritance is always optional; every problem that it solves can be solved another way.
Because no design technique is free, creating the most cost-effective application requires making informed tradeoffs between the relative costs and likely benefits of alternatives.
```
```
Using a role creates dependencies among the objects involved and these dependencies introduce risks that you must take into account when deciding among design options.
```
```
When a role needs shared behavior, you're faced with the problem of organizing the shared code.
Ideally, this code would be defined in a single place but be usable by any object that wished to act as the duck type and play the role.
```
```
Acquiring an understanding of the behavior of a deeply nested hierarchy is at best intimidating, at worst, impossible.
```
```
There are two antipatterns that indicate that your code might benefit from inheritance.
First, an object that uses a variable with a name like type or category to determine what messages to send to self contains two highly related but slightly different types.
Second, when a sending object checks the class of a receiving object to determine what message to send, you have overlooked a duck type.
Duck types might also share behavior. When they do, place the shared code in a module and include that module in each class or object that plays the role.
```
```
All of the code in an abstract superclass/module should apply to every class that inherits/includes it.
They should not contain code that applies to some, but not all, subclasses.
Faulty abstractions cause inheriting objects to contain incorrect behavior.
When subclasses override a method to declare that "they do not do that thing", they come perilously close to declaring that "They are not that thing".
```
```
If you cannot correctly identify the abstraction, there may not be one, and if no common abstraction exists, then inheritance is not the solution to your design problem.
```
```
Subclasses agree to a contract; they promise to be substitutable for their superclasses.
Subclasses that fail to honor their contract are difficult to use.
They're "special" and cannot be freely substituted for their superclasses.
These subclasses are declaring that they are not really a "kind of" their superclass and cast doubt on the correctness of the entire hierarchy.
```
```
Avoid writing code that requires its inheritors to send super; instead, use hook messages to allow subclasses to participate while absolving them of responsibility for knowing the abstract algorithm.
Inheritance, by its very nature, adds powerful dependencies on the structure and arrangement of code.
Writing code that requires subclasses to send super adds an additional dependency; avoid this if you can.
```
```
Hook methods solve the problem of sending super, but, unfortunately, only for adjacent levels of the hierarchy.
Thus, the limitations of hook methods are just one of the many reasons to create shallow hierarchies.
```
```
Shallow, narrow hierarchies are easy to understand.
Shallow, wide hierarchies are slightly more complicated.
Deep, narrow hierarchies are a bit more challenging and have a natural tendency to get wider, strictly as a side effect of their depth.
Deep, wide hierarchies are difficult to understand, costly to maintain, and should be avoided.
```