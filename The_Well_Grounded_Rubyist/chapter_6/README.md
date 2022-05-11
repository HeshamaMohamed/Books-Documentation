
## Chapter 6:  Control-flow techniques

### Topics covered in this chapter:
- Conditionals (if/unless and case/when)
- Loops(loop, for, while, and until)
- Iterators and code blocks, including block parameters and variables
- Examples of implementing Ruby methods in Ruby
- Exceptions and exception handling



### Personal thoughts

- Although most of this chapter I was already familiar with, it was nice to dig deeper into what happens under the hood. It proposed new possibilities I wasn't aware of.

- It was interesting that the Ruby parser allocates space for local variables written in the code and gives them nil values, even if they're never initialized. good thing this is not applied to instance, class variables tho.

- I liked the '===' illustration where we could have a === b as true but b === a as false. I remember searching about it before and I didn't get it fully.

- I faced a problem while solving the second exercise. I had a case where I want to pass an array to a when statement. I found a way to do so and found if there's an element in that array that matches the case variable, However; I couldn't find a way to know which variable matched. Sadly, I found it hard-coded in the official GitHub repo for the book. I will try to find a solution for this later.

- While reading the code block section, I wondered, why don't we just create other methods and call them instead of calling code blocks. It has the same functionality, we could pass arguments to it and return values from it. I think I don't get where it could be different than normal methods. I will try to search for critical use cases of them.

- I liked the safe navigation operator. I remember getting into so much trouble debugging some code I wrote because I didn't know it existed.