
# Chapter 13: Object Individuation

### Topics covered in this chapter:
- Singleton classes and how to add methods and constants to them
- Class methods
- The extend methods
- Several approaches to changing Ruby's core behavior
- BasicObject and how to leverage it.


### Personal thoughts

- I think the separation of the class' scope and singleton class scope concept is very clever. 

- First time i heard i could change how the core Ruby methods work (eg, String#methods) through monkey patching, I thought that is not a good idea. It could be problematic in the future when you get unexpected behaviors.  
    However, the mechanisms Ruby provides to decrease the risk and makes it safe is really cool.  
    
    The Additive/pass-through hybrids kind of change is alot better and safer. The way you can add optional functionalities to the existing core methods without changing the basic functionality is great.  
    
    Also the idea of limiting the scope of change through 'refine' and 'using', it shows how really dynamic Ruby is.
    
    I am happy that the book discussed that topic and proposed ways to decide if you should or not change core Ruby's methods, how to change, and when.