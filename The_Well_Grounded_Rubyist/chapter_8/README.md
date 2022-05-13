
## Chapter 8:  Strings, symbols, and other scalar objects

### Topics covered in this chapter:
- String creation and manipulation.
- The workings of symbols- Numerical objects, including floats and integers.
- Date, time and date/time objects and how to query and manipulate them.



### Personal thoughts

- up until section 8.1.6 (string conversion), everything was familiar, it was a good revision. However, I struggled a bit with the encoding section. 
    I didn't have much experience with encoding and I can't see where it would be applicable. I think I'll just get back to it whenever I need to use it.

- It was nice learning about symbols and understanding them as they always seemed ambiguous to me.
    Its Immutability and uniqueness differentiate it from strings and make it more like an Integer.

- It was interesting to know that each variable, method, or class name is stored as a symbol in the symbol table. I wonder if it has any connection to the real corresponding variable, methods, or classes, or if It's just storing the name. I am thinking that it would make some challenges when trying to differentiate between 2 different variables with the same name, assuming it had any connection to the implementation of course, just a random thought...

    NOTE: they answered my questions right into the following pages. It is just a symbol table, it has nothing to do with objects. It's just there to make the lookup process faster.

- I don't know why Symbol.all_symbols.include?(:abc) would add the symbol :abc into the symbol table...

- I always wondered, why we use symbols as keys in hashes or in attr_* methods. Luckily, I have found the answer as using symbols gives better performance as they reduce the overhead of transforming given strings into symbols.

- I also wonder what is the difference between using { age: 18} or {:age => 18} because sometimes it has different impact in implementation. I think that is related to hashes which will be discussed in the next chapter.


