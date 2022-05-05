
# Chapter 2: Objects, methods, and local variables

## This chapter is about
- How to create a new object and define methods for it.
- The basics of the message-sending mechanism by which you send requests to objects for information or action.
- Several of the important built-in methods that every Ruby object comes with: object_id, respond_to?, and send.
- Details of the syntax for method argument lists, including the use of required, optional, and default-valued arguments.
- How local variables and variable assignment work.
- Ruby's use of references to objects and how references play out when multiple variables refer to the same object.

## Personal thoughts
Transitioning from C++ to Ruby, there sure have been times where I stumbled upon code behaviors that i didn't understand, it is different from what  I would expect in C++.  
And whenever I searched for the cause of those behaviors, I always found the main answer is or similar to "because everything in ruby is an object".  

I never got it tho, it seemed far too complex and I wouldn't understand the specific answers on stackoverflow. 
That acted as limitation for me, because I had to think of other solutions to do this which may be longer or more complex.

However, after reading this chapter, I think I got most of it. 
I can understand now why it behaves like that. 
Most importantly, I can now think of more ways to implement the solutions I thought of but couldn't implement back then.

I'm feeling great now as I grasped these concept and have a clearer understanding of how ruby works with objects.  
especially the object-referencing part which prevented me from implementing many solutions back then because I didn't know how it worked in Ruby.

