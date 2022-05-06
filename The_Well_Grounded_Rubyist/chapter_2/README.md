
# Chapter 2: Objects, methods, and local variables

## This chapter is about
- How to create a new object and define methods for it.
- The basics of the message-sending mechanism by which you send requests to objects for information or action.
- Several of the important built-in methods that every Ruby object comes with: object_id, respond_to?, and send.
- Details of the syntax for method argument lists, including the use of required, optional, and default-valued arguments.
- How local variables and variable assignment work.
- Ruby's use of references to objects and how references play out when multiple variables refer to the same object.

## Personal thoughts
Transitioning from C++ to Ruby, there have been times when I stumbled upon code behaviors that I didn't understand. It was different from what  I would have expected when debugging in C++.  
Whenever I searched for the cause of those behaviors, I always found the answer is similar to "because everything in ruby is an object".  

I never got it though. It seemed far too complex and I wouldn't understand the specific answers on StackOverflow. 
That acted as a limitation for me. I had to think of other solutions to do this which may be longer or more complex.

However, after reading this chapter, I think I got most of it. 
I can understand now why it behaved the way it did.  
Most importantly, now I can think of more ways to implement the solutions I thought about but couldn't back then.

it feels good now as I grasped these concepts and have a clearer understanding of how ruby works with objects.  
Especially the object-referencing part which prevented me from implementing many solutions back then.

