
## Chapter 5:  The default object (self), scope, and visibility

### Topics covered in this chapter:
- The rotating role of self (the current or default object).
- Self as the receiver for method calls with no explicit receiver.
- Self as the owner of instance variables.
- Implications of the "classes are objects too" rule.
- Variable scope and visibility for local, global, and class variables.
- The rules for looking up and referencing constants
- Ruby's method-access levels (public, private, protected)
- Writing and working with top-level method definitions.



### Personal thoughts
- The chapter was a little bit dense with lots of edge cases. Thankfully though, I have understood how scope works in Ruby.

- I had a foggy understanding of the concept of self and scope in Ruby. Using it across class methods and instance methods always confused me. This chapter helped clear it all. I feel more confident now dealing with different scopes and contexts.

- I am more convinced that I shouldn't use class variables carelessly now. I didn't think of cases where it'd become problematic when I started using it.  
    Sharing variables among a class, all its subclasses, and every instance initialized by any of them could be messy or dangerous.  
    I think it also violates the encapsulation principle heavily.  
    It is favorable to use instance variables and class methods instead of class variables.



