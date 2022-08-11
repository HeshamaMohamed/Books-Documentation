# Chapter 8: Combining Objects with Composition

## Quotes by the author which I found insightful:
```
Composition allows objects to have structural independence, but at the cost of explicit message delegation.
```
```
The general rule is that faced with a problem that composition can solve, you should be biased toward doing so.
If you cannot explicitly defend inheritance as a better solution, use composition.
Composition contains far fewer built-in dependencies than inheritance; it is very often the best choice.
```
```
There are four goals for code: it should be transparent, reasonable, usable, and exemplary.
Inheritance when correctly applied, excels at the second, third, and fourth goals.
```
```
Even when inheritance makes sense for the problem, you might be writing code that will be used by others for purposes you did not anticipate.
These programmers want the behavior you have created but may not be able to tolerate the dependencies that inheritance demands.
```
```
Imagine reasonable, usable, and exemplary as two-sided coins.
The benefit side represents the wonderful gains that inheritance provides.
If you apply inheritance to a problem for which it is not suited, you effectively flip these coins over and encounter a parallel detriment.
The flip side of reasonable is the very high costs of making change.
The flip side of usable is the impossibility of adding behavior when new subclasses represent a mixture of types.
The flip side of exemplary is the chaos that ensues when novice programmers attempt to extend incorrectly modeled hierarchies.
```
```
As you write code for a wider audience, your ability to anticipate needs necessarily decreases and the suitability of requiring inheritance as part of the interface goes down.
```
```
When using composition, the natural tendency is to create many small objects that contain straightforward responsibilities that are accessible through clearly defined interfaces.
```
```
composition is excellent at prescribing rules for assembling an object made of parts but doesn't provide as much help for the problem of arranging code for a collection of parts that are very nearly identical.
```
```
Inheritance is best suited to adding functionality to existing classes when you will use most of the old code and add a relatively small amount of new code.
```
```
Use composition when the behavior is more than the sum of its parts.
```
